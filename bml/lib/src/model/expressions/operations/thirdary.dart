import '../expression.dart';

abstract class BmlThirdaryOperation extends BmlExpression {
  const BmlThirdaryOperation(this.left, this.middle, this.right);

  final BmlExpression left;
  final BmlExpression middle;
  final BmlExpression right;

  @override
  List<Object?> get props => [left, middle, right];

  const factory BmlThirdaryOperation.ifThenElse(
    BmlExpression left,
    BmlExpression middle,
    BmlExpression right,
  ) = _IfThenElse;
}

class _IfThenElse extends BmlThirdaryOperation {
  const _IfThenElse(super.left, super.middle, super.right);
}
