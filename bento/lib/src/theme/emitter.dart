import 'package:bento/src/helpers/data_class.dart';
import 'package:bento/src/helpers/naming.dart';
import 'package:bento/src/helpers/path.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'models.dart';

class BentoThemeDartEmitter {
  const BentoThemeDartEmitter({
    this.equatable = true,
  });

  final bool equatable;
  String emitDart(BentoTheme theme) {
    final library = LibraryBuilder();

    library.body.addAll(_emitDataClasses('', theme));

    library.directives.addAll([
      Directive.import('package:flutter/widgets.dart'),
      if (equatable) Directive.import('package:equatable/equatable.dart'),
    ]);

    final emitter = DartEmitter();
    final source = '${library.build().accept(emitter)}'; //.fixTrailingCommas();
    return DartFormatter().format(source);
  }

  String _dataClassName(String parentName, BentoTheme theme) {
    return '${parentName.isNotEmpty ? '${parentName}_' : ''}${theme.name}'
        .asClassname();
  }

  List<Class> _emitDataClasses(String parentName, BentoTheme theme) {
    final validTokens = theme.tokens.where((x) => x.value.maybeMap(
          unknown: (value) => false,
          orElse: () => true,
        ));
    final validChildren = theme.children.where(
      (child) => child.children.isNotEmpty || child.tokens.isNotEmpty,
    );
    final childParentName = _dataClassName(parentName, theme);

    final builder = DataClassBuilder(
      name: '${childParentName}Data',
      instances: [
        DataClassInstance(
          name: 'fallback',
          propertyValues: <String, String>{
            ...Map.fromEntries(
              validTokens.map(
                (x) => MapEntry(
                  x.name.asFieldname(),
                  _tokenDartValue(x),
                ),
              ),
            ),
            ...Map.fromEntries(
              validChildren.map(
                (child) => MapEntry(
                  child.name.asFieldname(),
                  '${_dataClassName(childParentName, child)}Data.fallback',
                ),
              ),
            ),
          },
        ),
      ],
      properties: <String, String>{
        ...Map.fromEntries(
          validTokens.map(
            (x) => MapEntry(
              x.name.asFieldname(),
              _tokenDartType(x),
            ),
          ),
        ),
        ...Map.fromEntries(
          validChildren.map(
            (child) => MapEntry(
              child.name.asFieldname(),
              '${_dataClassName(childParentName, child)}Data',
            ),
          ),
        ),
      },
    );

    return [
      builder.build(),
      ...theme.children
          .map((child) => _emitDataClasses(childParentName, child))
          .expand((children) => children)
    ];
  }

  String _tokenDartType(DesignToken token) => token.value.map(
        unknown: (x) => 'Object',
        dimension: (dimension) => 'double',
        color: (color) => 'Color',
        radius: (radius) => 'BorderRadius',
        spacing: (spacing) => 'EdgeInsets',
        fontStyle: (fontStyle) => 'TextStyle',
        icon: (icon) => 'Vector',
      );

  String _tokenDartValue(DesignToken token) => token.value.map(
        unknown: (unknown) => '\'Unsupported\'',
        dimension: (dimension) => '${dimension.value}',
        color: (color) =>
            'const Color(0x${color.value.value.toRadixString(16)})',
        radius: (radius) {
          String _radius(Radius radius) {
            return 'Radius.circular(${radius.x})';
          }

          if (radius.radius.topLeft == radius.radius.bottomRight &&
              radius.radius.topLeft == radius.radius.bottomLeft &&
              radius.radius.topLeft == radius.radius.topRight) {
            return 'const BorderRadius.all(${_radius(radius.radius.topLeft)})';
          }
          return 'const BorderRadius.only('
              'topLeft: ${_radius(radius.radius.topLeft)},'
              'topRight: ${_radius(radius.radius.topRight)},'
              'bottomLeft: ${_radius(radius.radius.bottomLeft)},'
              'bottomRight: ${_radius(radius.radius.bottomRight)},'
              ')';
        },
        spacing: (spacing) {
          if (spacing.value.top == spacing.value.bottom) {
            if (spacing.value.left == spacing.value.right) {
              if (spacing.value.top == spacing.value.left) {
                return 'const EdgeInsets.all(${spacing.value.left})';
              }
              return 'const EdgeInsets.symmetric('
                  'horizontal: ${spacing.value.left},'
                  'vertical: ${spacing.value.top},'
                  ')';
            }
          }
          return 'const EdgeInsets.only('
              'top: ${spacing.value.top},'
              'left: ${spacing.value.left},'
              'right: ${spacing.value.right},'
              'bottom: ${spacing.value.bottom},'
              ')';
        },
        fontStyle: (fontStyle) {
          final fontFamily = fontStyle.textStyle.fontFamily;
          final fontSize = fontStyle.textStyle.fontSize;
          final fontWeight = fontStyle.textStyle.fontWeight;
          final result = StringBuffer('const TextStyle(');
          if (fontFamily != null) {
            result.write('fontFamily: \'$fontFamily\',');
          }
          if (fontSize != null) {
            result.write('fontSize: $fontSize,');
          }
          if (fontWeight != null) {
            result.write(
                'fontWeight: FontWeight.w${(fontWeight.index + 1) * 100},');
          }

          result.write(')');
          return result.toString();
        },
        icon: (icon) => ' Vector('
            'path: ${emitPathData(icon.offset, icon.paths)},'
            'size: Size(${icon.size.width}, ${icon.size.height}),'
            ')',
      );
}
