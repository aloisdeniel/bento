import 'dart:convert';

import 'package:bml/src/model/model.dart';
import 'package:bml/src/serializers/json/reader.dart';

import '../serializer.dart';

class JsonBmlSerializer extends BmlSerializer<String> {
  const JsonBmlSerializer();

  @override
  BmlDocument deserialize(String value) {
    final json = jsonDecode(value);
    const reader = BmlJsonReader();
    final root = reader.readValue(json);
    return BmlDocument(root);
  }

  @override
  String serialize(BmlDocument document) {
    throw UnimplementedError();
  }
}
