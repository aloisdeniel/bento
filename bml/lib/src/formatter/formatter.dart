import 'package:bml/src/formatter/formatted.dart';
import 'package:petitparser/petitparser.dart';

import '../parser/grammar.dart';

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

final _parser = FigmaWidgetFormatterDefinition().build();

class FigmaWidgetFormatterDefinition extends FigmaWidgetGrammarDefinition {
  @override
  Parser arrayValue() {
    return super.arrayValue().map(
          (value) => value[1]?.expand((e) => e as Iterable) ?? const [],
        );
  }

  @override
  Parser falseValue() {
    return super.falseValue().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.keyword,
            token: value,
          ),
        ]);
  }

  @override
  Parser trueValue() {
    return super.trueValue().token().map((value) => [
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
  Parser nullValue() {
    return super.nullValue().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.keyword,
            token: value,
          ),
        ]);
  }

  @override
  Parser numberValue() {
    return super.numberValue().token().map((value) => [
          FormattedToken(
            type: FormattedTokenType.doubleLiteral,
            token: value,
          ),
        ]);
  }

  @override
  Parser objectValue() {
    return super.objectValue().map((each) {
      return [
        if (each[1] != null)
          for (final element in each[1]) ...element,
      ];
    });
  }

  @override
  Parser objectValueMember() {
    return super.objectValueMember().map((value) => [
          ...value[0],
          ...value[2],
        ]);
  }

  @override
  Parser objectValueKey() {
    return super.objectValueKey().map((value) => [
          ...value,
        ]);
  }

  @override
  Parser stringValue() {
    return super.stringValue().token().map((value) => [
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
