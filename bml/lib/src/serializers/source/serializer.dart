import 'package:bml/src/model/model.dart';
import 'package:bml/src/parser/parser.dart';

import '../serializer.dart';
import 'writer.dart';

class SourceBmlSerializer extends BmlSerializer<String> {
  const SourceBmlSerializer();

  @override
  BmlDocument deserialize(String value) {
    final result = parseBml(value);
    if (result.isFailure) throw result.message;
    return result.value;
  }

  @override
  String serialize(BmlDocument document) {
    final writer = BmlSourceWriter();
    writer.writeValue(document.root);
    return writer.toString();
  }
}
