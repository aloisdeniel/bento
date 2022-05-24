import 'package:recase/recase.dart';

extension NamingExtensions on String {
  String asFieldname() {
    var result = ReCase(this).camelCase._removeSpecialCharacters();

    if (result.startsWith(RegExp('[0-9]'))) {
      result = 'v$result';
    }

    if (_dartKeywords.contains(result)) {
      return '$result\$';
    }
    return result;
  }

  String asClassname() {
    var result = ReCase(this).pascalCase._removeSpecialCharacters();

    if (result.startsWith(RegExp('[0-9]'))) {
      result = 'V$result';
    }

    if (_dartKeywords.contains(result)) {
      return '$result\$';
    }
    return result;
  }

  String _removeSpecialCharacters() {
    final result = StringBuffer();
    final regexp = RegExp('[a-zA-Z0-9]');
    final digit = RegExp('[0-9]');
    for (var i = 0; i < length; i++) {
      final character = this[i];

      if (i == 0 && digit.allMatches(character).isNotEmpty) {
        result.write('v');
      }

      if (regexp.allMatches(character).isNotEmpty) {
        result.write(character);
      } else {
        result.write('c${character.codeUnits.join('c')}');
      }
    }

    return result.toString();
  }
}

const _dartKeywords = [
  'abstract',
  'else',
  'import',
  'show',
  'as',
  'enum',
  'in',
  'static',
  'assert',
  'export',
  'interface',
  'super',
  'async',
  'extends',
  'is',
  'switch',
  'await',
  'extension',
  'late',
  'sync',
  'break',
  'external',
  'library',
  'this',
  'case',
  'factory',
  'mixin',
  'throw',
  'catch',
  'false',
  'new',
  'true',
  'class',
  'final',
  'null',
  'try',
  'const',
  'finally',
  'on',
  'typedef',
  'continue',
  'for',
  'operator',
  'var',
  'covariant',
  'Function',
  'part',
  'void',
  'default',
  'get',
  'required',
  'while',
  'deferred',
  'hide',
  'rethrow',
  'with',
  'do',
  'if',
  'return',
  'yield',
  'dynamic',
  'implements',
  'set',
];
