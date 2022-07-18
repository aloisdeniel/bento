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
      case BmlBinaryProperty.aggregateOne:
        final reference = _readString();
        return BmlProperty.aggregate([reference]);
      case BmlBinaryProperty.aggregateMultiple:
        final length = _read();
        final refs = <String>[];
        for (var i = 0; i < length; i++) {
          refs.add(_readString());
        }
        return BmlProperty.aggregate(refs);
    }
  }

  BmlLiteral readValue() {
    final flag = _read();
    final type = BmlBinaryValue.values.firstWhere(
      (x) => x.flag == flag,
      orElse: () => throw Exception('Invalid property flag'),
    );

    switch (type) {
      case BmlBinaryValue.empty:
        return BmlLiteral.empty();
      case BmlBinaryValue.stringEmpty:
        return BmlLiteral.string('');
      case BmlBinaryValue.string:
        final value = _readString();
        return BmlLiteral.string(value);
      case BmlBinaryValue.booleanFalse:
        return BmlLiteral.boolean(false);
      case BmlBinaryValue.booleanTrue:
        return BmlLiteral.boolean(true);
      case BmlBinaryValue.numberZero:
        return BmlLiteral.number(0);
      case BmlBinaryValue.numberInteger:
        return BmlLiteral.number(_read());
      case BmlBinaryValue.numberDouble:
        var byteData = ByteData(8);
        for (var i = 0; i < 8; i++) {
          var byteData = ByteData(8);
          byteData.setUint8(i, _read());
        }
        return BmlLiteral.number(byteData.buffer.asFloat64List().first);
      case BmlBinaryValue.referenceOne:
        final value = _readString();
        return BmlLiteral.reference([value]);
      case BmlBinaryValue.referenceMultiple:
        final length = _read();
        final refs = <String>[];
        for (var i = 0; i < length; i++) {
          refs.add(_readString());
        }
        return BmlLiteral.reference(refs);
      case BmlBinaryValue.invocationNoArgs:
        final value = readValue();
        return BmlLiteral.invocation(value, const <BmlLiteral>[]);
      case BmlBinaryValue.invocationOneArg:
        final value = readValue();
        final arg = readValue();
        return BmlLiteral.invocation(value, <BmlLiteral>[arg]);
      case BmlBinaryValue.invocationMultipleArgs:
        final value = readValue();
        final length = _read();
        final children = <BmlLiteral>[];
        for (var i = 0; i < length; i++) {
          children.add(readValue());
        }
        return BmlLiteral.invocation(value, children);
      case BmlBinaryValue.node:
        final node = readNode();
        return BmlLiteral.node(node);
      case BmlBinaryValue.arrayEmpty:
        return BmlLiteral.array(const <BmlLiteral>[]);
      case BmlBinaryValue.array:
        final length = _read();
        final children = <BmlLiteral>[];
        for (var i = 0; i < length; i++) {
          children.add(readValue());
        }
        return BmlLiteral.array(children);
      case BmlBinaryValue.objectEmpty:
        return BmlLiteral.object(const <String, BmlLiteral>{});
      case BmlBinaryValue.object:
        final length = _read();
        final children = <String, BmlLiteral>{};
        for (var i = 0; i < length; i++) {
          final name = _readString();
          children[name] = readValue();
        }
        return BmlLiteral.object(children);
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
