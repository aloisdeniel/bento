import 'package:code_builder/code_builder.dart';
import 'package:recase/recase.dart';

class DataClassBuilder {
  const DataClassBuilder({
    required this.name,
    required this.properties,
    required this.instances,
  });
  final String name;
  final Map<String, String> properties;
  final List<DataClassInstance> instances;

  Class build({
    bool equatable = true,
  }) {
    final name = ReCase(this.name);
    final builder = ClassBuilder()..name = name.pascalCase;

    if (equatable) {
      builder.extend = refer('Equatable');
    }

    // Constructor
    final constructor = ConstructorBuilder()..constant = true;
    for (var property in properties.entries) {
      final propertyName = ReCase(property.key);
      final parameter = ParameterBuilder()
        ..named = true
        ..required = true
        ..toThis = true
        ..name = propertyName.camelCase;

      constructor.optionalParameters.add(parameter.build());
    }
    builder.constructors.add(constructor.build());

    // Instances
    for (var instance in instances) {
      final field = FieldBuilder()
        ..name = instance.name
        ..type = refer(builder.name!)
        ..static = true;

      final parameters = <String>[];
      for (var property in properties.entries) {
        parameters.add(
          '${property.key}:  ${instance.propertyValues[property.key]},',
        );

        field.assignment = Code('${builder.name}(${parameters.join()})');
      }
      builder.fields.add(field.build());
    }

    // Properties
    for (var property in properties.entries) {
      final propertyName = ReCase(property.key);
      final field = FieldBuilder()
        ..modifier = FieldModifier.final$
        ..name = propertyName.camelCase
        ..type = refer(property.value);

      builder.fields.add(field.build());
    }

    // Equality
    if (equatable) {
      final propsGetter = MethodBuilder()
        ..name = 'props'
        ..returns = refer('List<Object?>')
        ..type = MethodType.getter
        ..lambda = true
        ..annotations.add(const CodeExpression(Code("override")));
      propsGetter.body =
          Code('[${properties.keys.map((x) => '$x,').join('')}]');
      builder.methods.add(propsGetter.build());
    }

    return builder.build();
  }
}

class DataClassInstance {
  const DataClassInstance({
    required this.name,
    required this.propertyValues,
    this.isConst = true,
  });
  final bool isConst;
  final String name;
  final Map<String, String> propertyValues;
}
