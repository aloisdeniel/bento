import 'dart:convert';
import 'dart:typed_data';

import '../model/model.dart';
import 'serializer.dart';

class BinaryBmlSerializer extends BmlSerializer<Uint8List> {
  @override
  BmlDocument deserialize(Uint8List value) {
    final reader = BmlBinaryReader(value);
    final root = reader.readNode();
    return BmlDocument(root);
  }

  @override
  Uint8List serialize(BmlDocument document) {
    final writer = BmlBinaryWriter();
    writer.writeNode(document.root);
    return writer.build();
  }
}

enum BmlBinaryNode {
  tag(1),
  tagWithoutChildren(2),
  tagWithoutProperties(3),
  tagWithoutChildrenAndProperties(4),
  text(5),
  textEmpty(6);

  const BmlBinaryNode(this.flag);
  final int flag;
}

enum BmlBinaryProperty {
  member(1),
  aggregate(2);

  const BmlBinaryProperty(this.flag);
  final int flag;
}

enum BmlBinaryValue {
  empty(0),
  booleanTrue(1),
  booleanFalse(2),
  string(3),
  stringEmpty(4),
  numberInteger(5),
  numberDouble(6),
  numberZero(7),
  array(8),
  arrayEmpty(9),
  object(10),
  objectEmpty(11),
  reference(12);

  const BmlBinaryValue(this.flag);
  final int flag;
}

class BmlBinaryWriter {
  BmlBinaryWriter() {
    _write(version);
  }

  static const version = 1;

  Uint8List _buffer = Uint8List(4096);
  int index = 0;

  Uint8List build() => Uint8List.view(
        _buffer.buffer,
        0,
        index,
      );

  void writeNode(BmlNode value) {
    value.map(
      tag: (name, properties, children) {
        if (properties.isEmpty && children.isEmpty) {
          _write(BmlBinaryNode.tagWithoutChildrenAndProperties.flag);
          _writeString(name);
        } else if (properties.isEmpty) {
          _write(BmlBinaryNode.tagWithoutProperties.flag);
          _writeString(name);
          _write(children.length);
          for (var child in children) {
            writeNode(child);
          }
        } else if (children.isEmpty) {
          _write(BmlBinaryNode.tagWithoutChildren.flag);
          _writeString(name);
          _write(properties.length);
          for (var property in properties) {
            writeProperty(property);
          }
        } else {
          _write(BmlBinaryNode.tag.flag);
          _writeString(name);
          _write(properties.length);
          for (var property in properties) {
            writeProperty(property);
          }
          _write(children.length);
          for (var child in children) {
            writeNode(child);
          }
        }
      },
      text: (text) {
        _write(text.isEmpty
            ? BmlBinaryNode.textEmpty.flag
            : BmlBinaryNode.text.flag);
      },
    );
  }

  void writeProperty(BmlProperty value) {
    value.map(
      member: (name, value) {
        _write(BmlBinaryProperty.member.flag);
        _writeString(name);
        writeValue(value);
      },
      aggregate: (reference) {
        _write(BmlBinaryProperty.member.flag);
        _writeString(reference);
      },
    );
  }

  void writeValue(BmlValue value) {
    value.map(
      empty: () {
        _write(BmlBinaryValue.empty.flag);
      },
      reference: (ref) {
        _write(BmlBinaryValue.reference.flag);
        _writeString(ref);
      },
      boolean: (value) {
        _write(value
            ? BmlBinaryValue.booleanTrue.flag
            : BmlBinaryValue.booleanFalse.flag);
      },
      string: (value) {
        if (value.isEmpty) {
          _write(BmlBinaryValue.stringEmpty.flag);
        } else {
          _write(BmlBinaryValue.string.flag);
          _writeString(value);
        }
      },
      number: (value) {
        if (value == 0) {
          _write(BmlBinaryValue.numberZero.flag);
        } else if (value is double) {
          _write(BmlBinaryValue.numberDouble.flag);
          var byteData = ByteData(8);
          byteData.setFloat64(0, value.toDouble());
          var bytes = byteData.buffer.asUint8List();
          for (var byte in bytes) {
            _write(byte);
          }
        } else if (value is int) {
          _write(BmlBinaryValue.numberInteger.flag);
          _write(value);
        } else {
          _write(BmlBinaryValue.numberZero.flag);
        }
      },
      array: (items) {
        if (items.isEmpty) {
          _write(BmlBinaryValue.arrayEmpty.flag);
        } else {
          _write(BmlBinaryValue.array.flag);
          _write(items.length);
          for (var item in items) {
            writeValue(item);
          }
        }
      },
      object: (items) {
        if (items.isEmpty) {
          _write(BmlBinaryValue.objectEmpty.flag);
        } else {
          _write(BmlBinaryValue.object.flag);
          _write(items.entries.length);
          for (var item in items.entries) {
            _writeString(item.key);
            writeValue(item.value);
          }
        }
      },
    );
  }

  void _write(int bytes) {
    if (index == _buffer.length) {
      var newBuffer = Uint8List(_buffer.length);
      newBuffer.setRange(0, index, _buffer);
      _buffer = newBuffer;
    }
    _buffer[index] = bytes;
    index++;
  }

  void _writeString(String value) {
    final bytes = utf8.encode(value);
    _write(bytes.length);
    for (var byte in bytes) {
      _write(byte);
    }
  }
}

class BmlBinaryReader {
  BmlBinaryReader(this._buffer);

  static const version = 1;

  final Uint8List _buffer;
  int index = 0;

  Uint8List build() => Uint8List.view(
        _buffer.buffer,
        0,
        index,
      );

  void readVersion() {
    final version = _read();
    if (version != BmlBinaryReader.version) throw Exception('Bad version');
  }

  BmlNode readNode() {
    final flag = _read();
    final type = BmlBinaryNode.values.firstWhere(
      (x) => x.flag == flag,
      orElse: () => throw Exception('Invalid node flag'),
    );

    switch (type) {
      case BmlBinaryNode.tag:
        final name = _readString();
        final propertyCount = _read();
        final properties = <BmlProperty>[];
        for (var i = 0; i < propertyCount; i++) {
          properties.add(readProperty());
        }
        final childCount = _read();
        final children = <BmlNode>[];
        for (var i = 0; i < childCount; i++) {
          children.add(readNode());
        }
        return BmlNode.tag(
          name,
          properties: properties,
          children: children,
        );
      case BmlBinaryNode.tagWithoutChildren:
        final name = _readString();
        final propertyCount = _read();
        final properties = <BmlProperty>[];
        for (var i = 0; i < propertyCount; i++) {
          properties.add(readProperty());
        }
        return BmlNode.tag(
          name,
          properties: properties,
        );

      case BmlBinaryNode.tagWithoutProperties:
        final name = _readString();
        final childCount = _read();
        final children = <BmlNode>[];
        for (var i = 0; i < childCount; i++) {
          children.add(readNode());
        }
        return BmlNode.tag(
          name,
          children: children,
        );
      case BmlBinaryNode.tagWithoutChildrenAndProperties:
        final name = _readString();
        return BmlNode.tag(
          name,
        );
      case BmlBinaryNode.textEmpty:
        return BmlNode.text('');
      case BmlBinaryNode.text:
        final text = _readString();
        return BmlNode.text(text);
    }
  }

  BmlProperty readProperty() {
    final flag = _read();
    final type = BmlBinaryProperty.values.firstWhere(
      (x) => x.flag == flag,
      orElse: () => throw Exception('Invalid property flag'),
    );

    switch (type) {
      case BmlBinaryProperty.member:
        final name = _readString();
        final value = readValue();
        return BmlProperty.member(name, value);
      case BmlBinaryProperty.aggregate:
        final reference = _readString();
        return BmlProperty.aggregate(reference);
    }
  }

  BmlValue readValue() {
    final flag = _read();
    final type = BmlBinaryValue.values.firstWhere(
      (x) => x.flag == flag,
      orElse: () => throw Exception('Invalid property flag'),
    );

    switch (type) {
      case BmlBinaryValue.empty:
        return BmlValue.empty();
      case BmlBinaryValue.stringEmpty:
        return BmlValue.string('');
      case BmlBinaryValue.string:
        final value = _readString();
        return BmlValue.string(value);
      case BmlBinaryValue.booleanFalse:
        return BmlValue.boolean(false);
      case BmlBinaryValue.booleanTrue:
        return BmlValue.boolean(true);
      case BmlBinaryValue.numberZero:
        return BmlValue.number(0);
      case BmlBinaryValue.numberInteger:
        return BmlValue.number(_read());
      case BmlBinaryValue.numberDouble:
        var byteData = ByteData(8);
        for (var i = 0; i < 8; i++) {
          var byteData = ByteData(8);
          byteData.setUint8(i, _read());
        }
        return BmlValue.number(byteData.buffer.asFloat64List().first);
      case BmlBinaryValue.reference:
        final value = _readString();
        return BmlValue.reference(value);
      case BmlBinaryValue.arrayEmpty:
        return BmlValue.array(const <BmlValue>[]);
      case BmlBinaryValue.array:
        final length = _read();
        final children = <BmlValue>[];
        for (var i = 0; i < length; i++) {
          children.add(readValue());
        }
        return BmlValue.array(children);
      case BmlBinaryValue.objectEmpty:
        return BmlValue.object(const <String, BmlValue>{});
      case BmlBinaryValue.object:
        final length = _read();
        final children = <String, BmlValue>{};
        for (var i = 0; i < length; i++) {
          final name = _readString();
          children[name] = readValue();
        }
        return BmlValue.object(children);
    }
  }

  int _read() => _buffer[index++];

  Uint8List _readBytes(int length) {
    final result = Uint8List.view(_buffer.buffer, index, length);
    index += length;
    return result;
  }

  String _readString() {
    final length = _read();
    final bytes = _readBytes(length);
    return utf8.decode(bytes);
  }
}
