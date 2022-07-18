import 'package:bml/bml.dart';
import 'package:petitparser/reflection.dart';
import 'package:test/test.dart';

final definition = BmlParserDefinition();
final parser = definition.build(start: definition.expression);

void main() {
  test('linter', () {
    expect(linter(parser), isEmpty);
  });

  group('primitive', () {
    test('null', () {
      final result = parser.parse('null');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');

      expect(result.value, equals(BmlLiteral.empty()));
    });
    group('boolean', () {
      test('true', () {
        final result = parser.parse('true');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.boolean(true)));
      });
      test('false', () {
        final result = parser.parse('false');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.boolean(false)));
      });
    });
    group('number', () {
      test('integer', () {
        final result = parser.parse('10');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.number(10)));
      });
      test('float', () {
        final result = parser.parse('1.0');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.number(1.0)));
      });
    });
    group('string', () {
      test('empty', () {
        final result = parser.parse('""');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.string('')));
      });
      test('literal', () {
        final result = parser.parse('"Hello world"');
        expect(result.isSuccess, isTrue, reason: 'isSuccess');
        expect(result.value, equals(BmlLiteral.string('Hello world')));
      });
    });
  });
  test('reference', () {
    final result = parser.parse('props');
    expect(result.isSuccess, isTrue, reason: 'isSuccess');
    expect(result.value, equals(BmlLiteral.reference(['props'])));
  });
  group('object', () {
    test('empty', () {
      final result = parser.parse('{}');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(result.value, equals(BmlLiteral.object({})));
    });

    test('with primitive properties', () {
      final result =
          parser.parse('{ hello: "World", success: 1, really: true }');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
          result.value,
          equals(
            BmlLiteral.object(
              {
                'hello': BmlLiteral.string('World'),
                'success': BmlLiteral.number(1),
                'really': BmlLiteral.boolean(true),
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
            BmlLiteral.object(
              {
                'hello': BmlLiteral.string('World'),
                'success': BmlLiteral.number(1),
                'really': BmlLiteral.boolean(true),
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
            BmlLiteral.object(
              {
                'hello': BmlLiteral.string('World'),
                'child1': BmlLiteral.object(
                  {
                    'hello1': BmlLiteral.string('World1'),
                  },
                ),
                'child2': BmlLiteral.object(
                  {
                    'hello2': BmlLiteral.string('World2'),
                    'child3': BmlLiteral.object(
                      {
                        'hello3': BmlLiteral.string('World3'),
                      },
                    ),
                  },
                ),
              },
            ),
          ));
    });
  });

  group('invocation', () {
    test('no args', () {
      final result = parser.parse('example.member()');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlLiteral.invocation(
            BmlLiteral.reference(['example', 'member']),
            const <BmlLiteral>[],
          ),
        ),
      );
    });

    test('one double args', () {
      final result = parser.parse('example.member(12)');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlLiteral.invocation(
            BmlLiteral.reference(['example', 'member']),
            const <BmlLiteral>[BmlLiteral.number(12)],
          ),
        ),
      );
    });

    test('multiple args', () {
      final result = parser.parse('example.member(12, \'example\')');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlLiteral.invocation(
            BmlLiteral.reference(['example', 'member']),
            const <BmlLiteral>[
              BmlLiteral.number(12),
              BmlLiteral.string('example'),
            ],
          ),
        ),
      );
    });

    test('multiple embedded args', () {
      final result = parser
          .parse('example.member(12, test(), 4, other.thing(8,7), "example")');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlLiteral.invocation(
            BmlLiteral.reference(['example', 'member']),
            const <BmlLiteral>[
              BmlLiteral.number(12),
              BmlLiteral.invocation(
                  BmlLiteral.reference(['test']), <BmlLiteral>[]),
              BmlLiteral.number(4),
              BmlLiteral.invocation(
                BmlLiteral.reference(['other', 'thing']),
                <BmlLiteral>[
                  BmlLiteral.number(8),
                  BmlLiteral.number(7),
                ],
              ),
              BmlLiteral.string('example'),
            ],
          ),
        ),
      );
    });
  });

  group('array', () {
    test('empty', () {
      final result = parser.parse('[]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(result.value, equals(BmlLiteral.array([])));
    });

    test('with primitive items', () {
      final result = parser.parse('[ "World", 1,  true ]');
      expect(result.isSuccess, isTrue, reason: 'isSuccess');
      expect(
        result.value,
        equals(
          BmlLiteral.array(
            [
              BmlLiteral.string('World'),
              BmlLiteral.number(1),
              BmlLiteral.boolean(true),
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
          BmlLiteral.array(
            [
              BmlLiteral.string('World'),
              BmlLiteral.number(1),
              BmlLiteral.boolean(true),
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
          BmlLiteral.array(
            [
              BmlLiteral.string('World'),
              BmlLiteral.number(1),
              BmlLiteral.boolean(true),
              BmlLiteral.array([
                BmlLiteral.object(
                  {
                    'hello': BmlLiteral.string('World'),
                  },
                ),
                BmlLiteral.reference(['props']),
              ]),
              BmlLiteral.object(
                {
                  'hello1': BmlLiteral.string('World1'),
                },
              ),
            ],
          ),
        ),
      );
    });
  });
}
