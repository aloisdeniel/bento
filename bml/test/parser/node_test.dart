import 'package:bml/bml.dart';

import 'package:petitparser/reflection.dart';
import 'package:test/test.dart';

final definition = BmlParserDefinition();
final parser = definition.build(start: definition.tagNode);
final propertyParser = definition.build(start: definition.tagNodeProperty);
final propertiesParser = definition.build(start: definition.tagNodeProperties);

extension ResultExt on Result {
  String reason() => isFailure ? '$message at $position' : '';
}

void main() {
  test('linter', () {
    expect(linter(parser), isEmpty);
  });

  group('properties', () {
    test('string member', () {
      final result = propertyParser.parse('text="Hello World"');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlProperty.member(
            'text',
            BmlValue.string('Hello World'),
          ),
        ),
      );
    });

    test('dynamic member', () {
      final result = propertyParser.parse('visible={true}');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlProperty.member(
            'visible',
            BmlValue.boolean(true),
          ),
        ),
      );
    });

    test('multiple', () {
      final result =
          propertiesParser.parse('text="Hello World" visible={true}');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value[0],
        equals(
          BmlProperty.member(
            'text',
            BmlValue.string('Hello World'),
          ),
        ),
      );
      expect(
        result.value[1],
        equals(
          BmlProperty.member(
            'visible',
            BmlValue.boolean(true),
          ),
        ),
      );
    });
  });

  group('wihout children', () {
    test('without properties', () {
      final result = parser.parse('<Text />');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(result.value, equals(BmlNode.tag('Text')));
    });

    test('with one string property', () {
      final result = parser.parse('<Text text="Hello World"  />');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlNode.tag(
            'Text',
            properties: [
              BmlProperty.member(
                'text',
                BmlValue.string('Hello World'),
              )
            ],
          ),
        ),
      );
    });

    test('with one dynamic bool property', () {
      final result = parser.parse('<Text visible={true}  />');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlNode.tag(
            'Text',
            properties: [
              BmlProperty.member(
                'visible',
                BmlValue.boolean(true),
              )
            ],
          ),
        ),
      );
    });

    test('with one dynamic object property', () {
      final result = parser.parse('<Text data={{ hello: "World", }}  />');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlNode.tag(
            'Text',
            properties: [
              BmlProperty.member(
                'data',
                BmlValue.object({'hello': BmlValue.string('World')}),
              )
            ],
          ),
        ),
      );
    });

    test('with one aggregate', () {
      final result = parser.parse('<Text  {...props} />');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlNode.tag(
            'Text',
            properties: [
              BmlProperty.aggregate('props'),
            ],
          ),
        ),
      );
    });
  });

  group('with children', () {
    test('without properties', () {
      final result =
          parser.parse('''<Text><Example /><Example2></Example2></Text>''');
      expect(result.isSuccess, isTrue, reason: result.reason());

      expect(
        result.value,
        equals(
          BmlNode.tag(
            'Text',
            children: [
              BmlNode.tag('Example'),
              BmlNode.tag('Example2'),
            ],
          ),
        ),
      );
    });
  });
}
