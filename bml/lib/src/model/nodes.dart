import 'package:equatable/equatable.dart';

import 'properties.dart';
import 'values.dart';

abstract class BmlNode extends Equatable {
  const BmlNode();
  const factory BmlNode.tag(
    String identifier, {
    List<BmlProperty> properties,
    List<BmlNode> children,
  }) = _TagBmlNode;
  const factory BmlNode.text(String text) = _TextBmlNode;

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
    if (value is _TextBmlNode) {
      return text(value._text);
    }
    if (value is _TagBmlNode) {
      return tag(
        value.name,
        value.properties,
        value.children,
      );
    }

    throw Exception();
  }

  BmlValue? operator [](String name) => map(
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
            children.whereType<_TextBmlNode>().map((e) => e.text).join().trim(),
        text: (text) => text,
      );

  Iterable<BmlNode> get tags => map(
        tag: (name, properties, children) => children.whereType<_TagBmlNode>(),
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

class _TextBmlNode extends BmlNode {
  const _TextBmlNode(this._text);

  final String _text;

  @override
  List<Object?> get props => [_text];
}

class _TagBmlNode extends BmlNode {
  const _TagBmlNode(
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
