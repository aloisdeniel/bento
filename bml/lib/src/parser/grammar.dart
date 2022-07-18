import 'package:petitparser/petitparser.dart';

class BmlGrammarDefinition extends GrammarDefinition {
  @override
  Parser start() => ref0(expression).end();

  Parser token(Object source, [String? name]) {
    if (source is String) {
      return source.toParser(message: 'Expected ${name ?? source}').trim();
    } else if (source is Parser) {
      ArgumentError.checkNotNull(name, 'name');
      return source.flatten('Expected $name').trim();
    } else {
      throw ArgumentError('Unknown token type: $source.');
    }
  }

  // NODES ===============================================================

  Parser textNode() => pattern('^<').plus();

  Parser tagNode() => [
        ref0(tagNodeWithoutChildren),
        ref0(tagNodeWithChildren),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser tagNodeWithoutChildren() =>
      ref1(token, '<') &
      ref0(tagNodeName) &
      ref0(tagNodeProperties).optional() &
      ref1(token, '/>');

  Parser tagNodeWithChildren() =>
      ref0(tagNodeStart) & ref0(tagNodeChildren) & ref0(tagNodeEnd);

  Parser tagNodeChildren() => ref0(tagNodeChild).star();

  Parser tagNodeChild() => [
        ref0(tagNode),
        ref0(textNode),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser tagNodeStart() =>
      ref1(token, '<') &
      ref0(tagNodeName) &
      ref0(tagNodeProperties).optional() &
      ref1(token, '>');

  Parser tagNodeName() => ref0(identifier);

  Parser tagNodeEnd() =>
      ref1(token, '</') & ref0(identifier) & ref1(token, '>');

  Parser tagNodeProperties() =>
      whitespace().star() & ref0(tagNodeProperty).plus();

  Parser tagNodeProperty() => [
        ref0(tagNodePropertyAggregate),
        ref0(tagNodePropertyMember)
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser tagNodePropertyAggregate() =>
      ref1(token, '{...') & ref0(expression) & ref1(token, '}');

  Parser tagNodePropertyMember() =>
      ref0(tagNodeMemberName) & ref1(token, '=') & ref0(tagNodeMemberValue);

  Parser tagNodeMemberName() => ref0(identifier);

  Parser tagNodeMemberValue() => [
        ref0(tagNodeMemberDynamicValue),
        ref0(tagNodeMemberStringValue)
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser tagNodeMemberDynamicValue() =>
      ref1(token, '{') & ref0(expression) & ref1(token, '}');

  Parser tagNodeMemberStringValue() => ref0(stringLiteral);

  // EXPRESSIONS ===============================================================

  Parser expression() =>
      [
        ref0(groupExpression),
        ref0(arrayExpression),
        ref0(objectExpression),
        ref0(unaryExpression),
        ref0(literalExpression),
      ].toChoiceParser(failureJoiner: selectFarthestJoined) &
      [
        ref0(accessorExpression),
        ref0(binaryRightExpression),
        ref0(thirdaryRightExpressions),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  // Unary

  Parser unaryExpression() =>
      [
        ref1(token, '!'),
      ].toChoiceParser(failureJoiner: selectFarthestJoined) &
      ref0(expression);

  // Binary

  Parser binaryRightExpression() =>
      [
        ref1(token, '+'),
        ref1(token, '-'),
        ref1(token, '/'),
        ref1(token, '*'),
        ref1(token, '=='),
        ref1(token, '&&'),
        ref1(token, '&'),
        ref1(token, '||'),
        ref1(token, '|'),
        ref1(token, '%'),
      ].toChoiceParser(failureJoiner: selectFarthestJoined) &
      ref0(expression);

  // Binary

  Parser thirdaryRightExpressions() =>
      ref1(token, '?') & ref0(expression) & ref1(token, ':') & ref0(expression);

  // Node

  Parser nodeExpression() =>
      ref1(token, '(') & ref0(tagNode) & ref1(token, ')');

  // Accessors

  Parser accessorExpression() => [
        ref0(accessorCallExpression),
        ref0(accessorIndexedExpression),
        ref0(accessorMemberExpression),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser accessorMemberExpression() => ref1(token, '.') & ref0(identifier);

  Parser accessorCallExpression() =>
      ref1(token, '(') &
      ref0(expression)
          .separatedBy(
            ref1(token, ','),
            includeSeparators: false,
            optionalSeparatorAtEnd: true,
          )
          .optional() &
      ref1(token, ')');

  Parser accessorIndexedExpression() =>
      ref1(token, '[') &
      ref0(expression)
          .separatedBy(
            ref1(token, ','),
            includeSeparators: false,
            optionalSeparatorAtEnd: true,
          )
          .optional() &
      ref1(token, ']');

  // Array

  Parser arrayExpression() =>
      ref1(token, '[') &
      ref0(arrayItem).separatedBy(
        ref1(token, ','),
        includeSeparators: false,
        optionalSeparatorAtEnd: true,
      ) &
      ref1(token, ']');

  Parser arrayItem() => [
        ref0(arrayEachItem),
        ref0(arrayAggregateItem),
        ref0(expression),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser arrayAggregateItem() => ref1(token, '...') & ref0(expression);

  Parser arrayEachItem() =>
      ref1(token, 'for') &
      ref1(token, '(') &
      ref1(token, 'var') &
      ref0(identifier) &
      ref1(token, 'in') &
      ref0(expression) &
      ref1(token, ')') &
      ref0(arrayItem);

  Parser arrayConditionalItem() =>
      ref1(token, 'if') &
      ref1(token, '(') &
      ref0(expression) &
      ref1(token, ')') &
      ref0(arrayItem);

  // Object

  Parser objectExpression() =>
      ref1(token, '{') &
      ref0(objectExpressionMember).separatedBy(
        ref1(token, ','),
        includeSeparators: false,
        optionalSeparatorAtEnd: true,
      ) &
      ref1(token, '}');

  Parser objectExpressionMember() =>
      ref0(objectExpressionKey) & ref1(token, ':') & ref0(expression);

  Parser objectExpressionKey() => ref0(identifier);

  // Group

  Parser groupExpression() =>
      ref1(token, '(') & ref0(expression) & ref1(token, ')');

  // Literals

  Parser literalExpression() => [
        ref0(stringLiteral),
        ref0(numberLiteral),
        ref0(booleanLiteral),
        ref0(nullLiteral),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);
  Parser booleanLiteral() => ref0(trueLiteral) | ref0(falseLiteral);
  Parser trueLiteral() => ref1(token, 'true');
  Parser falseLiteral() => ref1(token, 'false');
  Parser nullLiteral() => ref1(token, 'null');
  Parser stringLiteral() => ref2(token, ref0(stringPrimitive), 'string');
  Parser numberLiteral() => ref2(token, ref0(numberPrimitive), 'number');

  // PRIMITIVES ================================================================

  Parser characterDoubleQuotePrimitive() =>
      ref0(characterDoubleQuoteNormal) |
      ref0(characterDoubleQuoteEscape) |
      ref0(characterUnicode);

  Parser characterSimpleQuotePrimitive() =>
      ref0(characterSimpleQuoteNormal) |
      ref0(characterSimpleQuoteEscape) |
      ref0(characterUnicode);

  Parser characterDoubleQuoteNormal() => pattern('^"\\');
  Parser characterSimpleQuoteNormal() => pattern('^\'\\');
  Parser characterDoubleQuoteEscape() =>
      char('\\') & pattern(escapeDoubleQuoteChars.keys.join());
  Parser characterSimpleQuoteEscape() =>
      char('\\') & pattern(escapeSimpleQuoteChars.keys.join());
  Parser characterUnicode() => string('\\u') & pattern('0-9A-Fa-f').times(4);
  Parser numberPrimitive() =>
      char('-').optional() &
      char('0').or(digit().plus()) &
      char('.').seq(digit().plus()).optional() &
      pattern('eE')
          .seq(pattern('-+').optional())
          .seq(digit().plus())
          .optional();
  Parser stringPrimitive() => [
        char('\'') & ref0(characterSimpleQuotePrimitive).star() & char('\''),
        char('"') & ref0(characterDoubleQuotePrimitive).star() & char('"'),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser letterLexicalToken() => letter();

  Parser digitLexicalToken() => digit();

  // Identifiers

  Parser identifier() =>
      ref0(identifierStartLexicalToken) &
      ref0(identifierPartLexicalToken).star();

  Parser identifierStartLexicalToken() => ref0(letterLexicalToken) | char('_');

  Parser identifierPartLexicalToken() =>
      ref0(identifierStartLexicalToken) | ref0(digitLexicalToken);
}

const Map<String, String> escapeDoubleQuoteChars = {
  '"': '"',
  ...escapeCommonQuoteChars,
};

const Map<String, String> escapeSimpleQuoteChars = {
  '\'': '\'',
  ...escapeCommonQuoteChars,
};

const Map<String, String> escapeCommonQuoteChars = {
  '\\': '\\',
  '/': '/',
  'b': '\b',
  'f': '\f',
  'n': '\n',
  'r': '\r',
  't': '\t'
};
