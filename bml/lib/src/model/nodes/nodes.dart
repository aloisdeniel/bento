import 'package:bml/src/model/expressions/expression.dart';
import 'package:equatable/equatable.dart';

import 'properties.dart';

abstract class BmlNode extends Equatable {
  const BmlNode();
  const factory BmlNode.tag(
    String identifier, {
    List<BmlProperty> properties,
    List<BmlNode> children,
  }) = BmlTagNode;
  const factory BmlNode.text(String text) = BmlTextNode;

  T map<T>({
    required T Function(
      String name,
      List<BmlProperty> properties,
      List<BmlNode> children,
    )
        tag,
    required T Function(String text) text,
  }) {
    final value = this;
    if (value is BmlTextNode) {
      return text(value._text);
    }
    if (value is BmlTagNode) {
      return tag(
        value.name,
        value.properties,
        value.children,
      );
    }

    throw Exception();
  }

  BmlExpression? operator [](String name) => map(
        tag: ((name, properties, children) => properties
            .whereType<MemberBmlProperty?>()
            .firstWhere(
              (x) => x?.name == name,
              orElse: () => null,
            )
            ?.value),
        text: (text) => null,
      );

  String get text => map(
        tag: (name, properties, children) =>
            children.whereType<BmlTextNode>().map((e) => e.text).join().trim(),
        text: (text) => text,
      );

  Iterable<BmlNode> get tags => map(
        tag: (name, properties, children) => children.whereType<BmlTagNode>(),
        text: (text) => const <BmlNode>[],
      );

  Iterable<String> get members => map(
        tag: (name, properties, children) =>
            properties.whereType<MemberBmlProperty>().map((e) => e.name),
        text: (text) => const <String>[],
      );

  Iterable<AggregateBmlProperty> get aggregates => map(
        tag: (name, properties, children) =>
            properties.whereType<AggregateBmlProperty>(),
        text: (text) => const <AggregateBmlProperty>[],
      );
}

class BmlTextNode extends BmlNode {
  const BmlTextNode(this._text);

  final String _text;

  @override
  List<Object?> get props => [_text];
}

class BmlTagNode extends BmlNode {
  const BmlTagNode(
    this.name, {
    this.properties = const <BmlProperty>[],
    this.children = const <BmlNode>[],
  });
  final String name;
  final List<BmlProperty> properties;
  final List<BmlNode> children;

  @override
  List<Object?> get props => [
        name,
        properties,
        children,
      ];
}
