import 'package:bml/src/model/model.dart';

abstract class BmlSerializer<T> {
  const BmlSerializer();
  T serialize(BmlDocument document);
  BmlDocument deserialize(T value);
}
