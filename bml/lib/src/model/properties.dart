import 'package:equatable/equatable.dart';

import 'values.dart';

abstract class BmlProperty extends Equatable {
  const BmlProperty();
  const factory BmlProperty.member(String name, BmlValue value) =
      MemberBmlProperty;
  const factory BmlProperty.aggregate(String reference) = AggregateBmlProperty;

  T map<T>({
    required T Function(String name, BmlValue value) member,
    required T Function(String reference) aggregate,
  }) {
    final value = this;
    if (value is MemberBmlProperty) {
      return member(value.name, value.value);
    }
    if (value is AggregateBmlProperty) {
      return aggregate(value.reference);
    }

    throw Exception();
  }
}

class MemberBmlProperty extends BmlProperty {
  const MemberBmlProperty(this.name, this.value);
  final String name;
  final BmlValue value;

  @override
  List<Object?> get props => [
        name,
        value,
      ];
}

class AggregateBmlProperty extends BmlProperty {
  const AggregateBmlProperty(this.reference);
  final String reference;

  @override
  List<Object?> get props => [reference];
}
