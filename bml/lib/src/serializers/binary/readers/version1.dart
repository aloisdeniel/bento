import 'dart:convert';
import 'dart:typed_data';

import 'package:bml/src/model/model.dart';
import 'package:bml/src/serializers/binary/flags/flags1.dart';

import 'reader.dart';

class BmlBinaryReader1 extends BmlVersionnedBinaryReader {
  BmlBinaryReader1(super.buffer);

  @override
  int get version => 1;

  @override
  BmlDocument build() => BmlDocument(readValue());

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
      case BmlBinaryValue.node:
        final node = readNode();
        return BmlValue.node(node);
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

  int _read() => buffer[index++];

  Uint8List _readBytes(int length) {
    final result = Uint8List.view(buffer.buffer, index, length);
    index += length;
    return result;
  }

  String _readString() {
    final length = _read();
    final bytes = _readBytes(length);
    return utf8.decode(bytes);
  }
}
