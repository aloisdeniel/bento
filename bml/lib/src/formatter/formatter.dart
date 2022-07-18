import 'package:bml/src/formatter/formatted.dart';
import 'package:petitparser/petitparser.dart';

import '../parser/grammar.dart';

export 'formatted.dart';

Result<FormattedSource> formatFigmaWidgetSource(String input) {
  {}
  return _parser.parse(input).map(
        (x) => FormattedSource(
          source: input,
          tokens: <FormattedToken>[
            for (var token in x) token,
          ]..sort(
              (x, y) => x.token.start.compareTo(y.token.start),
            ),
        ),
      );
}

final _parser = BmlFormatterDefinition().build();

class BmlFormatterDefinition extends BmlGrammarDefinition {
  @override
  Parser arrayExpression() {
    return super.arrayExpression().map(
          (value) => value[1]?.expand((e) => e as Iterable) ?? const [],
        );
  }

  @override
  Parser wrappedValue() {
    return super.wrappedValue().map(
          (value) => value[1]?.expand((e) => e as Iterable) ?? const [],
        );
  }

  @override
  Parser falseLiteral() {
    return super.falseLiteral().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.keyword,
            token: value,
          ),
        ]);
  }

  @override
  Parser trueLiteral() {
    return super.trueLiteral().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.keyword,
            token: value,
          ),
        ]);
  }

  @override
  Parser identifier() {
    return super.identifier().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.objectKey,
            token: value,
          ),
        ]);
  }

  @override
  Parser nullLiteral() {
    return super.nullLiteral().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.keyword,
            token: value,
          ),
        ]);
  }

  @override
  Parser numberLiteral() {
    return super.numberLiteral().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.doubleLiteral,
            token: value,
          ),
        ]);
  }

  @override
  Parser objectExpression() {
    return super.objectExpression().map((each) {
      return [
        if (each[1] != null)
          for (final element in each[1]) ...element,
      ];
    });
  }

  @override
  Parser objectExpressionMember() {
    return super.objectExpressionMember().map((value) => [
          ...value[0],
          ...value[2],
        ]);
  }

  @override
  Parser objectExpressionKey() {
    return super.objectExpressionKey().map((value) => [
          ...value,
        ]);
  }

  @override
  Parser stringLiteral() {
    return super.stringLiteral().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.stringLiteral,
            token: value,
          ),
        ]);
  }

  @override
  Parser stringPrimitive() {
    return super.stringPrimitive().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.stringLiteral,
            token: value,
          ),
        ]);
  }

  @override
  Parser tagNodeChildren() {
    return super.tagNodeChildren().map((value) => [
          ...value.expand((e) => e as Iterable),
        ]);
  }

  @override
  Parser tagNodeEnd() {
    return super.tagNodeEnd().map(
          (value) => [
            FormattedToken(
              type: FormattedTokenType.tag,
              token: value[1].first.token,
            ),
          ],
        );
  }

  @override
  Parser tagNodeMemberDynamicValue() {
    return super.tagNodeMemberDynamicValue().map(
          (value) => value[1],
        );
  }

  @override
  Parser tagNodeName() {
    return super.tagNodeName().map((value) => [
          FormattedToken(
            type: FormattedTokenType.tag,
            token: value.first.token,
          ),
        ]);
  }

  @override
  Parser tagNodeMemberName() {
    return super.tagNodeMemberName().map((value) => [
          FormattedToken(
            type: FormattedTokenType.objectKey,
            token: value.first.token,
          ),
        ]);
  }

  @override
  Parser tagNodeProperties() {
    return super.tagNodeProperties().map(
          (value) => value[1].expand((e) => e as Iterable),
        );
  }

  @override
  Parser tagNodePropertyAggregate() {
    return super.tagNodePropertyAggregate().map(
          (value) => const [],
        );
  }

  @override
  Parser tagNodePropertyMember() {
    return super.tagNodePropertyMember().map((value) => [
          ...value[0],
          ...value[2] ?? const [],
        ]);
  }

  @override
  Parser tagNodeStart() {
    return super.tagNodeStart().map((value) => [
          ...value[1],
          ...value[2] ?? const [],
        ]);
  }

  @override
  Parser tagNodeWithChildren() {
    return super.tagNodeWithChildren().map((value) => [
          ...value[0],
          ...value[1],
          ...value[2],
        ]);
  }

  @override
  Parser tagNodeWithoutChildren() {
    return super.tagNodeWithoutChildren().map((value) => [
          ...value[1],
          ...value[2] ?? const [],
        ]);
  }

  @override
  Parser textNode() {
    return super.textNode().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.stringLiteral,
            token: value,
          ),
        ]);
  }
}
