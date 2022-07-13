import 'package:bml/src/model/model.dart';

abstract class BmlSerializer<T> {
  T serialize(BmlDocument document);
  BmlDocument deserialize(T value);
}
