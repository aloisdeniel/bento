import 'package:recase/recase.dart';

var _index = 0;

final _specialFieldChars = RegExp(r'[,-.()[\]{}*|&%$#]');

extension NamingExtensions on String {
  String asFieldname() {
    var result = this;

    result = result.replaceAll(' ', '_');

    result = result.replaceAll(_specialFieldChars, '_');

    result = ReCase(result).camelCase._removeSpecialCharacters();

    if (result.startsWith(RegExp('[0-9]'))) {
      result = 'v$result';
    }

    if (_dartKeywords.contains(result)) {
      return '$result\$';
    }
    if (result.isEmpty) {
      print('Invalid name : $this');
      return 'invalid${_index++}';
    }

    return result;
  }

  String asClassname() {
    var result = this;
    result = result.replaceAll(' ', '_');

    result = result.replaceAll(_specialFieldChars, '_');

    result = ReCase(result).pascalCase._removeSpecialCharacters();

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
