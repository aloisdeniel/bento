import 'package:bml/bml.dart';
import 'package:petitparser/reflection.dart';
import 'package:test/test.dart';

final definition = BmlParserDefinition();
final parser = definition.build(start: definition.value);

void main() {
  test('linter', () {
    expect(linter(parser), isEmpty);
  });

  group('primitive', () {
    test('null', () {
      final result = parser.parse('null');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');

      expect(result.value, equals(BmlValue.empty()));
    });
    group('boolean', () {
      test('true', () {
        final result = parser.parse('true');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.boolean(true)));
      });
      test('false', () {
        final result = parser.parse('false');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.boolean(false)));
      });
    });
    group('number', () {
      test('integer', () {
        final result = parser.parse('10');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.number(10)));
      });
      test('float', () {
        final result = parser.parse('1.0');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.number(1.0)));
      });
    });
    group('string', () {
      test('empty', () {
        final result = parser.parse('""');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.string('')));
      });
      test('literal', () {
        final result = parser.parse('"Hello world"');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlValue.string('Hello world')));
      });
    });
  });
  test('reference', () {
    final result = parser.parse('props');
    expect(result.isSuccess, isTrue, reason: 'isSuccess');
    expect(result.value, equals(BmlValue.reference('props')));
  });
  group('object', () {
    test('empty', () {
      final result = parser.parse('{}');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(result.value, equals(BmlValue.object({})));
    });

    test('with primitive properties', () {
      final result =
          parser.parse('{ hello: "World", success: 1, really: true }');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
          result.value,
          equals(
            BmlValue.object(
              {
                'hello': BmlValue.string('World'),
                'success': BmlValue.number(1),
                'really': BmlValue.boolean(true),
              },
            ),
          ));
    });

    test('with trailing comma', () {
      final result =
          parser.parse('{ hello: "World", success: 1, really: true, }');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
          result.value,
          equals(
            BmlValue.object(
              {
                'hello': BmlValue.string('World'),
                'success': BmlValue.number(1),
                'really': BmlValue.boolean(true),
              },
            ),
          ));
    });

    test('with embedded objects', () {
      final result = parser.parse(
          '{ hello: "World", child1: { hello1: "World1" }, child2: { hello2: "World2",  child3: { hello3: "World3" } } }');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
          result.value,
          equals(
            BmlValue.object(
              {
                'hello': BmlValue.string('World'),
                'child1': BmlValue.object(
                  {
                    'hello1': BmlValue.string('World1'),
                  },
                ),
                'child2': BmlValue.object(
                  {
                    'hello2': BmlValue.string('World2'),
                    'child3': BmlValue.object(
                      {
                        'hello3': BmlValue.string('World3'),
                      },
                    ),
                  },
                ),
              },
            ),
          ));
    });
  });

  group('array', () {
    test('empty', () {
      final result = parser.parse('[]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(result.value, equals(BmlValue.array([])));
    });

    test('with primitive items', () {
      final result = parser.parse('[ "World", 1,  true ]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlValue.array(
            [
              BmlValue.string('World'),
              BmlValue.number(1),
              BmlValue.boolean(true),
            ],
          ),
        ),
      );
    });

    test('with trailing comma', () {
      final result = parser.parse('[ "World", 1,  true, ]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlValue.array(
            [
              BmlValue.string('World'),
              BmlValue.number(1),
              BmlValue.boolean(true),
            ],
          ),
        ),
      );
    });

    test('with embedded objects', () {
      final result = parser.parse(
          '[ "World", 1,  true, [ {hello: "World"  }, props ], {hello1: "World1"} ]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlValue.array(
            [
              BmlValue.string('World'),
              BmlValue.number(1),
              BmlValue.boolean(true),
              BmlValue.array([
                BmlValue.object(
                  {
                    'hello': BmlValue.string('World'),
                  },
                ),
                BmlValue.reference('props'),
              ]),
              BmlValue.object(
                {
                  'hello1': BmlValue.string('World1'),
                },
              ),
            ],
          ),
        ),
      );
    });
  });
}
