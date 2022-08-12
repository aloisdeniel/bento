import 'dart:typed_data';

import 'package:bml/src/model/model.dart';

abstract class BmlBinaryReader {
  BmlBinaryReader(this.buffer);

  bool get isSupported;

  final Uint8List buffer;
  int index = 0;

  BmlDocument build();
}

abstract class BmlVersionnedBinaryReader extends BmlBinaryReader {
  BmlVersionnedBinaryReader(super.buffer) {
    index++;
  }
  @override
  bool get isSupported => buffer[0] != version;

  int get version;
}
