import 'package:bml/src/model/expressions/expression.dart';
import 'package:bml/src/model/nodes/nodes.dart';

class BmlNodeValue extends BmlExpression {
  const BmlNodeValue(this.node);

  final BmlNode node;

  @override
  List<Object?> get props => [node];
}
