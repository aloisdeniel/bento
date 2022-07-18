import 'package:bml/src/model/expressions/expression.dart';
import 'package:equatable/equatable.dart';

import 'literal.dart';

class BmlArray extends BmlExpression {
  const BmlArray(this.items);
  final List<BmlArrayItem> items;
  @override
  List<Object?> get props => [items];
}

abstract class BmlArrayItem extends Equatable {
  const BmlArrayItem();
  const factory BmlArrayItem.item(BmlExpression expression) = BmlValueArrayItem;
  const factory BmlArrayItem.aggregate(BmlExpression value) =
      BmlAggregateArrayItem;
  const factory BmlArrayItem.conditional(
    BmlExpression condition,
    BmlArrayItem item,
  ) = BmlConditionalArrayItem;
  const factory BmlArrayItem.each(
    String variable,
    BmlExpression collection,
    BmlArrayItem item,
  ) = BmlEachArrayItem;
}

class BmlValueArrayItem extends BmlArrayItem {
  const BmlValueArrayItem(this.expression);

  final BmlExpression expression;

  @override
  List<Object?> get props => [expression];
}

// == ...value
class BmlAggregateArrayItem extends BmlArrayItem {
  const BmlAggregateArrayItem(this.value);

  final BmlExpression value;

  @override
  List<Object?> get props => [value];
}

class BmlConditionalArrayItem extends BmlArrayItem {
  const BmlConditionalArrayItem(
    this.condition,
    this.item,
  );

  final BmlExpression condition;
  final BmlArrayItem item;

  @override
  List<Object?> get props => [condition, item];
}

// == for(var name in collection) item
class BmlEachArrayItem extends BmlArrayItem {
  const BmlEachArrayItem(
    this.variable,
    this.collection,
    this.item,
  );

  final String variable;
  final BmlExpression collection;
  final BmlArrayItem item;

  @override
  List<Object?> get props => [variable, collection, item];
}
