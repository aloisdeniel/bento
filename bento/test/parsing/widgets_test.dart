import 'dart:io';
import 'package:bento/bento.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Parsing the example token file', () async {
    final data =
        await File('example/lib/widgets/tiles/ProductTile.dart').readAsString();

    final parsed = const WidgetParser().parseDart('ProductTile', data);

    assert(parsed.variants.length == 2);
  });
}
