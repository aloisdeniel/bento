enum BmlBinaryNode {
  tag(1),
  tagWithoutChildren(2),
  tagWithoutProperties(3),
  tagWithoutChildrenAndProperties(4),
  text(5),
  textEmpty(6);

  const BmlBinaryNode(this.flag);
  final int flag;
}

enum BmlBinaryProperty {
  member(1),
  aggregateOne(2),
  aggregateMultiple(3);

  const BmlBinaryProperty(this.flag);
  final int flag;
}

enum BmlBinaryValue {
  empty(0),
  booleanTrue(1),
  booleanFalse(2),
  string(3),
  stringEmpty(4),
  numberInteger(5),
  numberDouble(6),
  numberZero(7),
  array(8),
  arrayEmpty(9),
  object(10),
  objectEmpty(11),
  referenceMultiple(12),
  referenceOne(13),
  invocationNoArgs(14),
  invocationOneArg(15),
  invocationMultipleArgs(16),
  node(17);

  const BmlBinaryValue(this.flag);
  final int flag;
}
