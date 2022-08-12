import '../../model/model.dart';

class BmlJsonReader {
  const BmlJsonReader();
  BmlNode readNode(dynamic json) {
    if (json is String) {
      return BmlNode.text(json);
    }
    if (json is Map) {
      final name = json['\$node'];
      final children = json['children'];
      final properties = json['properties'];
      if (name != String) throw Exception('Bad or missing node name');

      final nodeProperties = <BmlProperty>[];
      if (properties is Map) {
        for (var entry in properties.entries) {
          final key = entry.key;
          final value = entry.value;
          nodeProperties.addAll(readProperty(key, value));
        }
      }

      final nodeChildren = <BmlNode>[];
      if (children is List) {
        for (var child in children) {
          if (child is Map) {
            nodeChildren.add(readNode(child));
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

  List<BmlProperty> readProperty(dynamic key, dynamic value) {
    if (key is String) {
      if (key == '...' && value == List) {
        return <BmlProperty>[
          for (var aggregate in value)
            if (aggregate is String) BmlProperty.aggregate(aggregate),
        ];
      }
      return <BmlProperty>[BmlProperty.member(key, readValue(value))];
    }

    return const <BmlProperty>[];
  }

  BmlValue readValue(dynamic json) {
    if (json == null) return BmlValue.empty();
    if (json is num) return BmlValue.number(json);
    if (json is String) return BmlValue.string(json);
    if (json is bool) return BmlValue.boolean(json);
    if (json is bool) return BmlValue.boolean(json);
    if (json is List) {
      return BmlValue.array([
        for (var item in json) readValue(item),
      ]);
    }
    if (json is Map) {
      if (json.containsKey('\$node')) {
        return BmlValue.node(readNode(json));
      }
      return BmlValue.object({
        for (var item in json.entries)
          item.key.toString(): readValue(item.value),
      });
    }
    return BmlValue.empty();
  }
}
