import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';

import '../models.dart';

class BentoThemeDartEmitter {
  const BentoThemeDartEmitter({
    this.equatable = true,
  });

  final bool equatable;
  String emitDart(BentoTheme theme) {
    final library = LibraryBuilder();

    final fileName = ReCase(theme.name).snakeCase;
    library.directives.addAll([
      Directive.import('package:flutter/widgets.dart'),
      Directive.import('${fileName}_data.dart'),
    ]);

    final name = ReCase(theme.name);
    final builder = ClassBuilder()..name = name.pascalCase;

    if (equatable) {
      builder.extend = refer('InheritedWidget');
    }

    // Constructor
    final constructor = ConstructorBuilder()..constant = true;

    final key = ParameterBuilder()
      ..named = true
      ..required = true
      ..type = refer('Key?')
      ..name = 'key';
    constructor.optionalParameters.add(key.build());

    final child = ParameterBuilder()
      ..named = true
      ..required = true
      ..type = refer('Widget')
      ..name = 'child';
    constructor.optionalParameters.add(child.build());

    final parameter = ParameterBuilder()
      ..named = true
      ..required = true
      ..toThis = true
      ..name = 'data';
    constructor.optionalParameters.add(parameter.build());

    constructor.initializers.add(Code('super(key: key, child: child)'));
    builder.constructors.add(constructor.build());

    // Field
    final field = FieldBuilder()
      ..name = 'data'
      ..modifier = FieldModifier.final$
      ..type = refer('${builder.name}Data');
    builder.fields.add(field.build());

    // Method updateShouldNotify
    final updateShouldNotify = MethodBuilder()
      ..name = 'updateShouldNotify'
      ..returns = refer('bool')
      ..annotations.add(const CodeExpression(Code("override")));

    final oldWidget = ParameterBuilder()
      ..type = refer(builder.name!)
      ..covariant = true
      ..name = 'oldWidget';
    updateShouldNotify.requiredParameters.add(oldWidget.build());

    updateShouldNotify.body = Code('return data != oldWidget.data;');
    builder.methods.add(updateShouldNotify.build());

    library.body.add(builder.build());

    final emitter = DartEmitter();
    final source = '${library.build().accept(emitter)}';
    return DartFormatter().format(source);
  }
}
