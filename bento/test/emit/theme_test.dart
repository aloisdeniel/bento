import 'dart:io';

import 'package:bento/src/theme/emitter.dart';
import 'package:bento/bento.dart';
import 'package:test/test.dart';

void main() {
  test('Emitting the example token file', () async {
    final data = await File('example/bento/theme/AppTheme.json').readAsString();
    final theme = const BentoThemeParser().parseJson('AppTheme', data);
    const emitter = BentoThemeDartEmitter();

    final result = emitter.emitDart(theme);
    assert(result.isNotEmpty);
  });
}
