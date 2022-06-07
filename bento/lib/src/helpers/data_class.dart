import 'package:bento/src/helpers/naming.dart';
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

  List<Class> build({
    bool equatable = true,
    bool lazyInstances = true,
  }) {
    final result = <ClassBuilder>[];

    final name = ReCase(this.name);
    final builder = ClassBuilder()..name = name.pascalCase;
    result.add(builder);

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

      if (equatable || !lazyInstances) {
        // Inline instance
        final parameters = <String>[];
        for (var property in properties.entries) {
          parameters.add(
            '${property.key}:  ${instance.propertyValues[property.key]},',
          );
        }
        field.assignment = Code('${builder.name}(${parameters.join()})');
      } else {
        // Lazy instance
        final instanceBuilder = ClassBuilder()
          ..implements.add(refer(builder.name!))
          ..name = '_' + '${builder.name}_instance'.asClassname();
        result.add(instanceBuilder);

        final constructor = ConstructorBuilder();
        instanceBuilder.constructors.add(constructor.build());

        for (var property in properties.entries) {
          final propertyName = ReCase(property.key);
          final field = FieldBuilder()
            ..modifier = FieldModifier.final$
            ..late = true
            ..name = propertyName.camelCase
            ..annotations.add(const CodeExpression(Code("override")))
            ..assignment = Code(instance.propertyValues[property.key]!);

          instanceBuilder.fields.add(field.build());
        }

        field.assignment = Code('${instanceBuilder.name}()');
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

    return [
      ...result.map((e) => e.build()),
    ];
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
