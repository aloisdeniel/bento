import 'package:petitparser/petitparser.dart';

import '../model/model.dart';
import 'grammar.dart';

export 'package:petitparser/petitparser.dart' show Result;

Result<BmlDocument> parseBml(String input) {
  return _parser.parse(input).map((r) => r as BmlDocument);
}

final _parser = BmlParserDefinition().build();

class BmlParserDefinition extends BmlGrammarDefinition {
  @override
  Parser start() {
    return super.start().map((x) => BmlDocument(x as BmlLiteral));
  }
  // Nodes ---------------------------------------------------------------------

  @override
  Parser tagNodeWithoutChildren() {
    return super.tagNodeWithoutChildren().map(
          (each) => BmlNode.tag(
            each[1],
            properties: <BmlProperty>[
              ...(each[2] ?? const <BmlProperty>[]),
            ],
          ),
        );
  }

  @override
  Parser tagNodeWithChildren() {
    return super.tagNodeWithChildren().map(
      (each) {
        final BmlNode start = each[0];
        return start.map(
          tag: (name, properties, children) => BmlNode.tag(
            name,
            properties: properties,
            children: <BmlNode>[
              ...(each[1] ?? const <BmlNode>[]),
            ],
          ),
          text: (text) => throw Exception(),
        );
      },
    );
  }

  @override
  Parser tagNodeStart() {
    return super.tagNodeStart().map(
          (each) => BmlNode.tag(
            each[1],
            properties: <BmlProperty>[
              ...(each[2] ?? const <BmlProperty>[]),
            ],
          ),
        );
  }

  @override
  Parser tagNodeProperties() {
    return super.tagNodeProperties().map((each) => each[1]);
  }

  @override
  Parser tagNodePropertyAggregate() {
    return super.tagNodePropertyAggregate().map((each) {
      final BmlLiteral reference = each[1];
      return BmlProperty.aggregate(
        reference.maybeMap(
          reference: (identifiers) => <String>[
            ...identifiers,
          ],
          orElse: () => const <String>[],
        ),
      );
    });
  }

  @override
  Parser tagNodePropertyMember() {
    return super.tagNodePropertyMember().map(
          (each) => BmlProperty.member(
            each[0],
            each[2],
          ),
        );
  }

  @override
  Parser tagNodeMemberDynamicValue() {
    return super.tagNodeMemberDynamicValue().map(
          (each) => each[1],
        );
  }

  @override
  Parser textNode() {
    return super.textNode().map((each) => BmlNode.text(each.join()));
  }

  // Values --------------------------------------------------------------------

  @override
  Parser expression() {
    return super.expression().map((each) {
      final value = each[0];
      final args = each[1];
      if (args != null) {
        return BmlLiteral.invocation(value, <BmlLiteral>[...args]);
      }

      return value;
    });
  }

  @override
  Parser invocationArgs() {
    return super.invocationArgs().map((each) => each[1] != null
        ? <BmlLiteral>[
            ...each[1],
          ]
        : const <BmlLiteral>[]);
  }

  @override
  Parser wrappedValue() {
    return super.wrappedValue().map((each) => each[1]);
  }

  @override
  Parser objectExpression() => super.objectExpression().map((each) {
        final result = <String, BmlLiteral>{};
        if (each[1] != null) {
          for (final element in each[1]) {
            result[element[0]] = element[2];
          }
        }
        return BmlLiteral.object(result);
      });

  @override
  Parser arrayExpression() => super.arrayExpression().map(
        (each) => BmlLiteral.array(
          <BmlLiteral>[
            ...(each[1] ?? const <BmlLiteral>[]),
          ],
        ),
      );

  @override
  Parser trueLiteral() =>
      super.trueLiteral().map((each) => BmlLiteral.boolean(true));

  @override
  Parser falseLiteral() =>
      super.falseLiteral().map((each) => BmlLiteral.boolean(false));

  @override
  Parser nullLiteral() => super.nullLiteral().map((each) => BmlLiteral.empty());

  @override
  Parser stringLiteral() =>
      ref0(stringPrimitive).trim().map((each) => BmlLiteral.string(each));

  @override
  Parser numberLiteral() =>
      super.numberLiteral().map((each) => BmlLiteral.number(num.parse(each)));

  @override
  Parser referenceValue() =>
      super.referenceValue().map((each) => BmlLiteral.reference(
            <String>[
              ...each,
            ],
          ));

  @override
  Parser nodeExpression() =>
      super.nodeExpression().map((each) => BmlLiteral.node(each));

  @override
  Parser identifier() =>
      super.identifier().map((each) => each[0] + each[1].join());

  @override
  Parser stringPrimitive() =>
      super.stringPrimitive().map((each) => each[1].join());

  @override
  Parser characterDoubleQuoteEscape() => super
      .characterDoubleQuoteEscape()
      .map((each) => escapeDoubleQuoteChars[each[1]]);

  @override
  Parser characterSimpleQuoteEscape() => super
      .characterSimpleQuoteEscape()
      .map((each) => escapeSimpleQuoteChars[each[1]]);

  @override
  Parser characterUnicode() => super.characterUnicode().map((each) {
        final charCode = int.parse(each[1].join(), radix: 16);
        return String.fromCharCode(charCode);
      });
}
