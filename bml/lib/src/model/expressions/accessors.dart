import 'expression.dart';

abstract class BmlAccessor extends BmlExpression {
  const BmlAccessor();

  const factory BmlAccessor.member(
    BmlExpression instance,
    String member,
  ) = _Member;

  const factory BmlAccessor.call(
    BmlExpression instance,
    List<BmlExpression> arguments,
  ) = _Call;

  const factory BmlAccessor.index(
    BmlExpression instance,
    List<BmlExpression> arguments,
  ) = _Index;
}

class _Member extends BmlAccessor {
  const _Member(
    this.instance,
    this.member,
  );

  final BmlExpression instance;
  final String member;
  @override
  List<Object?> get props => [instance, member];
}

class _Call extends BmlAccessor {
  const _Call(
    this.instance,
    this.arguments,
  );

  final BmlExpression instance;
  final List<BmlExpression> arguments;
  @override
  List<Object?> get props => [instance, arguments];
}

class _Index extends BmlAccessor {
  const _Index(
    this.instance,
    this.arguments,
  );

  final BmlExpression instance;
  final List<BmlExpression> arguments;
  @override
  List<Object?> get props => [instance, arguments];
}
