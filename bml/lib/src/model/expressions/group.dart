import 'expression.dart';

// == Parenthesis
class BmlGroupExpression extends BmlExpression {
  const BmlGroupExpression(this.expression);

  final BmlExpression expression;

  @override
  List<Object?> get props => [expression];
}
