import 'dart:convert';

import 'package:bml/src/model/model.dart';

import 'serializer.dart';

class JsonBmlSerializer extends BmlSerializer<String> {
  @override
  BmlDocument deserialize(String value) {
    final json = jsonDecode(value);
    final root = _nodeFromjson(json);
    return BmlDocument(root);
  }

  @override
  String serialize(BmlDocument document) {
    throw UnimplementedError();
  }
}

BmlNode _nodeFromjson(dynamic json) {
  if (json is String) {
    return BmlNode.text(json);
  }
  if (json is Map) {
    final name = json['name'];
    final children = json['children'];
    final properties = json['properties'];
    if (name != String) throw Exception('Bad or missing node name');

    final nodeProperties = <BmlProperty>[];
    if (properties is Map) {
      for (var entry in properties.entries) {
        final key = entry.key;
        final value = entry.value;
        nodeProperties.addAll(_propertiesFromjson(key, value));
      }
    }

    final nodeChildren = <BmlNode>[];
    if (children is List) {
      for (var child in children) {
        if (child is Map) {
          nodeChildren.add(_nodeFromjson(child));
        }
      }
    }

    return BmlNode.tag(
      name,
      children: nodeChildren,
      properties: nodeProperties,
    );
  }

  throw Exception();
}

List<BmlProperty> _propertiesFromjson(dynamic key, dynamic value) {
  if (key is String) {
    if (key == '...' && value == List) {
      return <BmlProperty>[
        for (var aggregate in value)
          if (aggregate is String) BmlProperty.aggregate(aggregate),
      ];
    }
    return <BmlProperty>[BmlProperty.member(key, _valueFromjson(value))];
  }

  return const <BmlProperty>[];
}

BmlValue _valueFromjson(dynamic json) {
  if (json == null) return BmlValue.empty();
  if (json is num) return BmlValue.number(json);
  if (json is String) return BmlValue.string(json);
  if (json is bool) return BmlValue.boolean(json);
  if (json is bool) return BmlValue.boolean(json);
  if (json is List) {
    return BmlValue.array([
      for (var item in json) _valueFromjson(item),
    ]);
  }
  if (json is Map) {
    return BmlValue.object({
      for (var item in json.entries)
        item.key.toString(): _valueFromjson(item.value),
    });
  }
  return BmlValue.empty();
}
