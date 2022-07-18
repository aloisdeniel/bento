import 'package:bml/src/model/expressions/expression.dart';
import 'package:equatable/equatable.dart';

class BmlDocument extends Equatable {
  const BmlDocument(this.root);

  final BmlExpression root;

  @override
  List<Object?> get props => [root];
}
