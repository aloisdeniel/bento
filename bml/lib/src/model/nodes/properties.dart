import 'package:bml/src/model/expressions/expression.dart';
import 'package:equatable/equatable.dart';

abstract class BmlProperty extends Equatable {
  const BmlProperty();
  const factory BmlProperty.member(String name, BmlExpression value) =
      MemberBmlProperty;
  const factory BmlProperty.aggregate(List<String> reference) =
      AggregateBmlProperty;

  T map<T>({
    required T Function(String name, BmlExpression value) member,
    required T Function(List<String> identifiers) aggregate,
  }) {
    final value = this;
    if (value is MemberBmlProperty) {
      return member(value.name, value.value);
    }
    if (value is AggregateBmlProperty) {
      return aggregate(value.identifiers);
    }

    throw Exception();
  }
}

class MemberBmlProperty extends BmlProperty {
  const MemberBmlProperty(this.name, this.value);
  final String name;
  final BmlExpression value;

  @override
  List<Object?> get props => [
        name,
        value,
      ];
}

class AggregateBmlProperty extends BmlProperty {
  const AggregateBmlProperty(this.identifiers);
  final List<String> identifiers;

  @override
  List<Object?> get props => [identifiers];
}
