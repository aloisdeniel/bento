import 'dart:convert';
import 'dart:typed_data';

import 'package:bml/src/serializers/binary/serializer.dart';
import 'package:bml/src/serializers/serializer.dart';

import '../../model/model.dart';

class Base64BmlSerializer extends BmlSerializer<String> {
  const Base64BmlSerializer([
    this.binary = const BinaryBmlSerializer(),
  ]);

  final BmlSerializer<Uint8List> binary;

  @override
  BmlDocument deserialize(String value) {
    final bytes = base64Decode(value);
    return binary.deserialize(bytes);
  }

  @override
  String serialize(BmlDocument document) {
    final bytes = binary.serialize(document);
    return base64Encode(bytes);
  }
}
