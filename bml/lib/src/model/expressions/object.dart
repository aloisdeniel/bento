import 'package:bml/src/model/expressions/expression.dart';
import 'package:equatable/equatable.dart';

class BmlObjectExpression extends BmlExpression {
  const BmlObjectExpression(this.items);
  final List<BmlObjectItem> items;
  @override
  List<Object?> get props => [items];
}

abstract class BmlObjectItem extends Equatable {
  const BmlObjectItem();
  const factory BmlObjectItem.item(String name, BmlExpression expression) =
      BmlValueObjectItem;
  const factory BmlObjectItem.aggregate(BmlExpression value) =
      BmlAggregateObjectItem;
  const factory BmlObjectItem.conditional(
    BmlExpression condition,
    BmlObjectItem valueitem,
  ) = BmlConditionalObjectItem;
  const factory BmlObjectItem.each(
    String variable,
    BmlExpression collection,
    BmlObjectItem item,
  ) = BmlEachObjectItem;
}

class BmlValueObjectItem extends BmlObjectItem {
  const BmlValueObjectItem(this.name, this.expression);

  final String name;
  final BmlExpression expression;

  @override
  List<Object?> get props => [expression];
}

class BmlAggregateObjectItem extends BmlObjectItem {
  const BmlAggregateObjectItem(this.value);

  final BmlExpression value;

  @override
  List<Object?> get props => [value];
}

class BmlConditionalObjectItem extends BmlObjectItem {
  const BmlConditionalObjectItem(
    this.condition,
    this.item,
  );

  final BmlExpression condition;
  final BmlObjectItem item;

  @override
  List<Object?> get props => [condition, item];
}

// == for(var name in collection) item
class BmlEachObjectItem extends BmlObjectItem {
  const BmlEachObjectItem(
    this.variable,
    this.collection,
    this.item,
  );

  final String variable;
  final BmlExpression collection;
  final BmlObjectItem item;

  @override
  List<Object?> get props => [variable, collection, item];
}
