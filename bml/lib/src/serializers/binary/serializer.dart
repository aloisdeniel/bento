import 'dart:typed_data';

import 'package:bml/src/serializers/binary/writers/writer.dart';

import '../../model/model.dart';
import '../serializer.dart';
import 'readers/reader.dart';
import 'readers/version1.dart';

class BinaryBmlSerializer extends BmlSerializer<Uint8List> {
  const BinaryBmlSerializer();

  static final readers = <BmlBinaryReader Function(Uint8List buffer)>[
    (b) => BmlBinaryReader1(b),
  ];

  @override
  BmlDocument deserialize(Uint8List value) {
    for (var factory in readers) {
      final reader = factory(value);
      if (reader.isSupported) {
        return reader.build();
      }
    }

    throw Exception('Unsupported format (version: ${value.first})');
  }

  @override
  Uint8List serialize(BmlDocument document) {
    final writer = BmlBinaryWriter();
    writer.writeValue(document.root);
    return writer.build();
  }
}
