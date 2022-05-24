import 'dart:io';
import 'package:bento/bento.dart';
import 'package:test/test.dart';

void main() {
  test('Parsing the example token file', () async {
    final data = await File('example/bento/widgets/tiles/ProductTile.dart')
        .readAsString();

    final parsed = const BentoWidgetParser().parseDart('ProductTile', data);

    assert(parsed.variants.length == 2);
  });
}
