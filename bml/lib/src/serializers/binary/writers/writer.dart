import 'dart:convert';
import 'dart:typed_data';

import 'package:bml/src/model/model.dart';
import 'package:bml/src/serializers/binary/flags/flags1.dart';

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
      node: (node) {
        _write(BmlBinaryValue.node.flag);
        writeNode(node);
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
