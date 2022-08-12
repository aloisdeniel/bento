import 'package:yaml/yaml.dart';

extension YamlNodeExtension on YamlNode {
  dynamic toJson() {
    final value = this;

    if (value is YamlMap) {
      return <String, Object?>{
        ...value.nodes.map((key, value) {
          final stringKey = key is YamlNode ? key.toJson() : key;
          final mapValue = value.toJson();
          return MapEntry(
            stringKey,
            mapValue,
          );
        }),
      };
    }

    if (value is YamlList) {
      return <Object?>[
        ...value.map((value) => value is YamlNode ? value.toJson() : value),
      ];
    }

    if (value is YamlScalar) {
      return value.value;
    }

    return value;
  }
}
