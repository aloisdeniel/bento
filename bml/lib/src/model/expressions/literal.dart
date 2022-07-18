import 'expression.dart';

abstract class BmlLiteral extends BmlExpression {
  const BmlLiteral();
  const factory BmlLiteral.empty() = BmlEmptyLiteral;
  const factory BmlLiteral.boolean(bool value) = BmlRawLiteral<bool>;
  const factory BmlLiteral.string(String value) = BmlRawLiteral<String>;
  const factory BmlLiteral.number(num value) = BmlRawLiteral<num>;

  T map<T>({
    required T Function()? empty,
    required T Function(bool value) boolean,
    required T Function(String value) string,
    required T Function(num value) number,
  }) {
    final value = this;
    if (value is BmlRawLiteral<bool>) {
      return boolean(value.value);
    }
    if (value is BmlRawLiteral<String>) {
      return string(value.value);
    }
    if (value is BmlRawLiteral<num>) {
      return number(value.value);
    }

    throw Exception();
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? empty,
    T Function(bool value)? boolean,
    T Function(String value)? string,
    T Function(num value)? number,
  }) {
    return map(
      empty: () => empty != null ? empty() : orElse(),
      boolean: (value) => boolean != null ? boolean(value) : orElse(),
      string: (value) => string != null ? string(value) : orElse(),
      number: (value) => number != null ? number(value) : orElse(),
    );
  }
}

// == null
class BmlEmptyLiteral extends BmlLiteral {
  const BmlEmptyLiteral();

  @override
  List<Object?> get props => [];
}

class BmlRawLiteral<T> extends BmlLiteral {
  const BmlRawLiteral(this.value);
  final T value;

  @override
  List<Object?> get props => [value];
}
