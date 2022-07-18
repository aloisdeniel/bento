import '../expression.dart';

abstract class BmlUnaryOperation extends BmlExpression {
  const BmlUnaryOperation(this.expression);

  final BmlExpression expression;

  @override
  List<Object?> get props => [expression];

  const factory BmlUnaryOperation.not(
    BmlExpression expression,
  ) = _Not;
}

class _Not extends BmlUnaryOperation {
  const _Not(super.expression);
}
