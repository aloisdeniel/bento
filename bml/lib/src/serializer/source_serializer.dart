import 'package:bml/src/model/model.dart';
import 'package:bml/src/parser/parser.dart';

import 'serializer.dart';

class SourceBmlSerializer extends BmlSerializer<String> {
  @override
  BmlDocument deserialize(String value) {
    final result = parseBml(value);
    if (result.isFailure) throw result.message;
    return result.value;
  }

  @override
  String serialize(BmlDocument document) {
    final writer = BmlSourceWriter();
    writer.writeNode(document.root);
    return writer.toString();
  }
}

class BmlSourceWriter {
  final buffer = StringBuffer();

  @override
  String toString() => buffer.toString();

  void writeNode(BmlNode value) {
    value.map(
      tag: (name, properties, children) {
        buffer.write('<$name');

        if (children.isEmpty) {
          buffer.write('/>');
        } else {
          buffer.write('>');
          for (var child in children) {
            writeNode(child);
          }
          buffer.write('</$name>');
        }
      },
      text: (text) => buffer.write(text),
    );
  }

  void writeProperty(BmlProperty value) {
    value.map(
      member: (name, value) {
        buffer.write(name);
        buffer.write('=');
        value.maybeMap(
          string: (_) => writeValue(value),
          orElse: () {
            buffer.write('{');
            writeValue(value);
            buffer.write('}');
          },
        );
      },
      aggregate: (reference) => buffer.write('{...$reference}'),
    );
  }

  void writeValue(BmlValue value) {
    value.map(
      empty: () => buffer.write('null'),
      reference: (ref) => buffer.write(ref),
      boolean: (value) => buffer.write(value ? 'true' : 'false'),
      string: (value) => buffer.write('"$value"'),
      number: (value) => buffer.write(value.toString()),
      array: (items) {
        buffer.write('[');
        for (var item in items) {
          writeValue(item);
          buffer.write(',');
        }
        buffer.write(']');
      },
      object: (items) {
        buffer.write('[');
        for (var item in items.entries) {
          buffer.write(item.key);
          buffer.write('=');
          writeValue(item.value);
          buffer.write(',');
        }
        buffer.write(']');
      },
    );
  }
}
