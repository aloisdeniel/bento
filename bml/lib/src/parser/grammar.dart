import 'package:petitparser/petitparser.dart';

class FigmaWidgetGrammarDefinition extends GrammarDefinition {
  @override
  Parser start() => ref0(tagNode).end();

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

  // Nodes ---------------------------------------------------------------------

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
      ref1(token, '{...') & ref0(referenceValue) & ref1(token, '}');

  Parser tagNodePropertyMember() =>
      ref0(tagNodeMemberName) & ref1(token, '=') & ref0(tagNodeMemberValue);

  Parser tagNodeMemberName() => ref0(identifier);

  Parser tagNodeMemberValue() => [
        ref0(tagNodeMemberDynamicValue),
        ref0(tagNodeMemberStringValue)
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser tagNodeMemberDynamicValue() =>
      ref1(token, '{') & ref0(value) & ref1(token, '}');

  Parser tagNodeMemberStringValue() => ref0(stringValue);

  // Values --------------------------------------------------------------------

  Parser value() => [
        ref0(stringValue),
        ref0(numberValue),
        ref0(objectValue),
        ref0(arrayValue),
        ref0(trueValue),
        ref0(falseValue),
        ref0(nullValue),
        ref0(referenceValue),
      ].toChoiceParser(failureJoiner: selectFarthestJoined);

  Parser arrayValue() =>
      ref1(token, '[') &
      ref0(elements).optional() &
      ref1(token, ',').optional() &
      ref1(token, ']');
  Parser elements() =>
      ref0(value).separatedBy(ref1(token, ','), includeSeparators: false);
  Parser members() => ref0(objectValueMember)
      .separatedBy(ref1(token, ','), includeSeparators: false);

  Parser objectValue() =>
      ref1(token, '{') &
      ref0(members).optional() &
      ref1(token, ',').optional() &
      ref1(token, '}');
  Parser objectValueMember() =>
      ref0(objectValueKey) & ref1(token, ':') & ref0(value);

  Parser objectValueKey() => ref0(identifier);

  Parser trueValue() => ref1(token, 'true');
  Parser falseValue() => ref1(token, 'false');
  Parser nullValue() => ref1(token, 'null');
  Parser stringValue() => ref2(token, ref0(stringPrimitive), 'string');
  Parser numberValue() => ref2(token, ref0(numberPrimitive), 'number');
  Parser referenceValue() => ref0(identifier);

  // Primitives ----------------------------------------------------------------

  Parser characterPrimitive() =>
      ref0(characterNormal) | ref0(characterEscape) | ref0(characterUnicode);
  Parser characterNormal() => pattern('^"\\');
  Parser characterEscape() => char('\\') & pattern(jsonEscapeChars.keys.join());
  Parser characterUnicode() => string('\\u') & pattern('0-9A-Fa-f').times(4);
  Parser numberPrimitive() =>
      char('-').optional() &
      char('0').or(digit().plus()) &
      char('.').seq(digit().plus()).optional() &
      pattern('eE')
          .seq(pattern('-+').optional())
          .seq(digit().plus())
          .optional();
  Parser stringPrimitive() =>
      char('"') & ref0(characterPrimitive).star() & char('"');

  Parser letterLexicalToken() => letter();

  Parser digitLexicalToken() => digit();

  // Identifiers ----------------------------------------------------------------

  Parser identifier() =>
      ref0(identifierStartLexicalToken) &
      ref0(identifierPartLexicalToken).star();

  Parser identifierStartLexicalToken() => ref0(letterLexicalToken) | char('_');

  Parser identifierPartLexicalToken() =>
      ref0(identifierStartLexicalToken) | ref0(digitLexicalToken);
}

const Map<String, String> jsonEscapeChars = {
  '\\': '\\',
  '/': '/',
  '"': '"',
  'b': '\b',
  'f': '\f',
  'n': '\n',
  'r': '\r',
  't': '\t'
};
