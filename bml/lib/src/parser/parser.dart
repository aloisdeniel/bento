import 'package:petitparser/petitparser.dart';

import '../model/model.dart';
import 'grammar.dart';

Result<BmlDocument> parseBml(String input) {
  return _parser.parse(input).map((r) => r as BmlDocument);
}

final _parser = FigmaWidgetParserDefinition().build();

class FigmaWidgetParserDefinition extends FigmaWidgetGrammarDefinition {
  @override
  Parser start() {
    return super.start().map((x) => BmlDocument(x as BmlNode));
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
      final BmlValue reference = each[1];
      return BmlProperty.aggregate(
        reference.maybeMap(
          reference: (name) => name,
          orElse: () => '',
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
  Parser objectValue() => super.objectValue().map((each) {
        final result = <String, BmlValue>{};
        if (each[1] != null) {
          for (final element in each[1]) {
            result[element[0]] = element[2];
          }
        }
        return BmlValue.object(result);
      });

  @override
  Parser arrayValue() => super.arrayValue().map(
        (each) => BmlValue.array(
          <BmlValue>[
            ...(each[1] ?? const <BmlValue>[]),
          ],
        ),
      );

  @override
  Parser trueValue() => super.trueValue().map((each) => BmlValue.boolean(true));

  @override
  Parser falseValue() =>
      super.falseValue().map((each) => BmlValue.boolean(false));

  @override
  Parser nullValue() => super.nullValue().map((each) => BmlValue.empty());

  @override
  Parser stringValue() =>
      ref0(stringPrimitive).trim().map((each) => BmlValue.string(each));

  @override
  Parser numberValue() =>
      super.numberValue().map((each) => BmlValue.number(num.parse(each)));

  @override
  Parser referenceValue() =>
      super.referenceValue().map((each) => BmlValue.reference(each));

  @override
  Parser identifier() =>
      super.identifier().map((each) => each[0] + each[1].join());

  @override
  Parser stringPrimitive() =>
      super.stringPrimitive().map((each) => each[1].join());

  @override
  Parser characterEscape() =>
      super.characterEscape().map((each) => jsonEscapeChars[each[1]]);

  @override
  Parser characterUnicode() => super.characterUnicode().map((each) {
        final charCode = int.parse(each[1].join(), radix: 16);
        return String.fromCharCode(charCode);
      });
}
