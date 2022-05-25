import 'dart:io';

import 'package:bento/src/theme/emitters/data.dart';
import 'package:bento/bento.dart';
import 'package:test/test.dart';

void main() {
  test('Emitting the example token file', () async {
    final data = await File('example/bento/theme/AppTheme.json').readAsString();
    final theme = const BentoThemeParser().parseJson('AppTheme', data);
    const emitter = BentoThemeDataDartEmitter();

    final result = emitter.emitDart(theme);
    assert(result.isNotEmpty);
  });
}
