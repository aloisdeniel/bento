import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:bento/src/errors.dart';

import 'models.dart';

class WidgetParser {
  const WidgetParser();
  BentoWidget parseDart(String name, String source) {
    final parsed = parseString(content: source);

    final variants = <BentoWidgetVariant>[];
    for (final declaration in parsed.unit.declarations) {
      if (declaration is FunctionDeclaration &&
          _isVariantDeclaration(declaration)) {
        _variantValidator(declaration);
        variants.add(
          BentoWidgetVariant(
            buildFunction: declaration,
          ),
        );
      }
    }

    return BentoWidget(
      name: name,
      unit: parsed.unit,
      variants: variants,
    );
  }
}

const authorizedArgumentTypes = [
  'double',
  'int',
  'num',
  'bool',
  'String',
  'Widget',
];

bool _isVariantDeclaration(FunctionDeclaration declaration) {
  final returnType = declaration.returnType;
  if (returnType is NamedType && returnType.name.name != 'Widget') {
    // Must returns a Widget
    return false;
  }
  final expression = declaration.functionExpression;
  if (expression.parameters?.parameters.isEmpty ?? true) {
    // Must have at least one parameter
    return false;
  }
  final parameters = expression.parameters!.parameters;
  final contextParam = parameters.first;
  if (contextParam.identifier?.name == 'context' &&
      contextParam.declaredElement?.type
              .getDisplayString(withNullability: true) ==
          'BuildContext') {
    // First parameter  must be 'BuildContext context'
    return false;
  }

  return true;
}

void _variantValidator(FunctionDeclaration declaration) {
  final parameters =
      declaration.functionExpression.parameters!.parameters.skip(1);

  if (parameters.any((x) => !x.isNamed)) {
    throw BentoParsingError(
      'All parameters must be named parameters',
      sourceOffset: declaration.offset,
    );
  }

  for (final parameter in parameters) {
    if (parameter is DefaultFormalParameter) {
      final name = parameter.identifier?.name;
      if (parameter.defaultValue == null) {
        throw BentoParsingError(
          'All named parameters must have a default value. '
          'The parameter `$name` has no default value.',
          sourceOffset: parameter.offset,
        );
      }
    }
  }

  for (var parameter in parameters) {
    if (parameter is DefaultFormalParameter) {
      final paramDetail = parameter.parameter;
      if (paramDetail is SimpleFormalParameter) {
        final paramType = paramDetail.type;
        if (paramType is NamedType) {
          final name = paramType.name.name;
          if (!authorizedArgumentTypes.contains(name)) {
            throw BentoParsingError(
              'All named parameters must be of type: ${authorizedArgumentTypes.join(',')}. '
              'The parameter `$name` is not.',
              sourceOffset: parameter.offset,
            );
          }
        }
      }
    }
  }
}
