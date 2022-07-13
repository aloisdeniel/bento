import 'package:bml/bml.dart';
import 'package:equatable/equatable.dart';

abstract class BmlValue extends Equatable {
  const BmlValue();
  const factory BmlValue.empty() = _EmptyBmlValue;
  const factory BmlValue.boolean(bool value) = _RawBmlValue<bool>;
  const factory BmlValue.string(String value) = _RawBmlValue<String>;
  const factory BmlValue.number(num value) = _RawBmlValue<num>;
  const factory BmlValue.node(BmlNode value) = _BmlNodeValue;
  const factory BmlValue.reference(String name) = _ReferenceValue;
  const factory BmlValue.array(List<BmlValue> items) = _ArrayValue;
  const factory BmlValue.object(Map<String, BmlValue> items) = _ObjectValue;

  T map<T>({
    required T Function()? empty,
    required T Function(String name) reference,
    required T Function(bool value) boolean,
    required T Function(String value) string,
    required T Function(num value) number,
    required T Function(BmlNode node) node,
    required T Function(List<BmlValue> items) array,
    required T Function(Map<String, BmlValue> items) object,
  }) {
    final value = this;
    if (value is _RawBmlValue<bool>) {
      return boolean(value.value);
    }
    if (value is _RawBmlValue<String>) {
      return string(value.value);
    }
    if (value is _RawBmlValue<num>) {
      return number(value.value);
    }
    if (value is _ReferenceValue) {
      return reference(value.name);
    }
    if (value is _ArrayValue) {
      return array(value.items);
    }
    if (value is _ObjectValue) {
      return object(value.items);
    }
    if (value is _BmlNodeValue) {
      return node(value.node);
    }

    throw Exception();
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? empty,
    T Function(String name)? reference,
    T Function(bool value)? boolean,
    T Function(String value)? string,
    T Function(num value)? number,
    T Function(BmlNode node)? node,
    T Function(List<BmlValue> items)? array,
    T Function(Map<String, BmlValue> items)? object,
  }) {
    return map(
      empty: () => empty != null ? empty() : orElse(),
      reference: (ref) => reference != null ? reference(ref) : orElse(),
      boolean: (value) => boolean != null ? boolean(value) : orElse(),
      string: (value) => string != null ? string(value) : orElse(),
      number: (value) => number != null ? number(value) : orElse(),
      array: (items) => array != null ? array(items) : orElse(),
      object: (items) => object != null ? object(items) : orElse(),
      node: (value) => node != null ? node(value) : orElse(),
    );
  }
}

class _EmptyBmlValue extends BmlValue {
  const _EmptyBmlValue();

  @override
  List<Object?> get props => [];
}

class _RawBmlValue<T> extends BmlValue {
  const _RawBmlValue(this.value);
  final T value;

  @override
  List<Object?> get props => [value];
}

class _ReferenceValue extends BmlValue {
  const _ReferenceValue(this.name);
  final String name;
  @override
  List<Object?> get props => [name];
}

class _ArrayValue extends BmlValue {
  const _ArrayValue(this.items);
  final List<BmlValue> items;
  @override
  List<Object?> get props => [items];
}

class _ObjectValue extends BmlValue {
  const _ObjectValue(this.items);
  final Map<String, BmlValue> items;

  BmlValue? operator [](String key) => items[key];

  Iterable<String> get keys => items.keys;

  int get length => items.length;
  @override
  List<Object?> get props => [items];
}

class _BmlNodeValue extends BmlValue {
  const _BmlNodeValue(this.node);

  final BmlNode node;

  @override
  List<Object?> get props => [node];
}
