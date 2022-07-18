import '../expression.dart';

abstract class BmlBinaryOperation extends BmlExpression {
  const BmlBinaryOperation(this.left, this.right);

  final BmlExpression left;
  final BmlExpression right;

  @override
  List<Object?> get props => [left, right];

  const factory BmlBinaryOperation.or(
    BmlExpression left,
    BmlExpression right,
  ) = _Or;
  const factory BmlBinaryOperation.and(
    BmlExpression left,
    BmlExpression right,
  ) = _And;
  const factory BmlBinaryOperation.add(
    BmlExpression left,
    BmlExpression right,
  ) = _Add;
  const factory BmlBinaryOperation.substract(
    BmlExpression left,
    BmlExpression right,
  ) = _Substract;
  const factory BmlBinaryOperation.multiply(
    BmlExpression left,
    BmlExpression right,
  ) = _Multiply;
  const factory BmlBinaryOperation.divide(
    BmlExpression left,
    BmlExpression right,
  ) = _Divide;
  const factory BmlBinaryOperation.modulo(
    BmlExpression left,
    BmlExpression right,
  ) = _Modulo;
  const factory BmlBinaryOperation.equals(
    BmlExpression left,
    BmlExpression right,
  ) = _Equals;
  const factory BmlBinaryOperation.different(
    BmlExpression left,
    BmlExpression right,
  ) = _Different;
}

class _Or extends BmlBinaryOperation {
  const _Or(super.left, super.right);
}

class _And extends BmlBinaryOperation {
  const _And(super.left, super.right);
}

class _Add extends BmlBinaryOperation {
  const _Add(super.left, super.right);
}

class _Substract extends BmlBinaryOperation {
  const _Substract(super.left, super.right);
}

class _Multiply extends BmlBinaryOperation {
  const _Multiply(super.left, super.right);
}

class _Divide extends BmlBinaryOperation {
  const _Divide(super.left, super.right);
}

class _Modulo extends BmlBinaryOperation {
  const _Modulo(super.left, super.right);
}

class _Equals extends BmlBinaryOperation {
  const _Equals(super.left, super.right);
}

class _Different extends BmlBinaryOperation {
  const _Different(super.left, super.right);
}
