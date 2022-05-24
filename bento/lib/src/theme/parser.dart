import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

class BentoThemeParser {
  const BentoThemeParser();
  BentoTheme parseJson(String name, String source) {
    final json = jsonDecode(source);
    return BentoThemeConverter(name).fromJson(json);
  }
}

class BentoThemeConverter
    implements JsonConverter<BentoTheme, Map<String, Object?>> {
  const BentoThemeConverter(this.name);

  final String name;

  @override
  BentoTheme fromJson(Map<String, Object?> json) {
    final entries = json.map((key, value) {
      if (value is Map<String, Object?>) {
        return MapEntry(
          key,
          value,
        );
      }
      return MapEntry(
        key,
        const <String, Object?>{},
      );
    });

    return BentoTheme(
      name: name,
      children: [
        ...entries.entries
            .where((e) => e.value.isNotEmpty && !e.value.containsKey('type'))
            .map(
              (e) => BentoThemeConverter(e.key).fromJson({
                ...e.value,
              }),
            ),
      ],
      tokens: [
        ...entries.entries
            .where((e) => e.value.isNotEmpty && e.value.containsKey('type'))
            .map(
              (e) => const DesignTokenConverter().fromJson(e),
            ),
      ],
    );
  }

  @override
  Map<String, Object?> toJson(BentoTheme value) {
    return {
      ...Map.fromEntries(
          value.children.map((child) => MapEntry(child.name, toJson(value)))),
      ...Map.fromEntries(
        value.tokens.map(
          (token) => const DesignTokenConverter().toJson(token),
        ),
      ),
    };
  }
}

class DesignTokenConverter
    implements
        JsonConverter<DesignToken, MapEntry<String, Map<String, Object?>>> {
  const DesignTokenConverter();

  @override
  DesignToken fromJson(MapEntry<String, Map<String, Object?>> json) {
    final name = json.value['name'];
    final type = json.value['type'];
    final value = json.value['value'];
    return DesignToken(
      name: json.key,
      description: name is String ? name : null,
      value: () {
        if (type is String) {
          switch (type) {
            case 'dimension':
              return DesignTokenValue.dimension(
                  value is num ? value.toDouble() : 0.0);
            case 'color':
              return const ColorTokenValueConverter().fromJson(value);
            case 'custom-spacing':
              return const SpacingTokenValueConverter().fromJson(value);
            case 'custom-radius':
              return const RadiusTokenValueConverter().fromJson(value);
            case 'custom-fontStyle':
              return const FontStyleTokenValueConverter().fromJson(value);
            case 'custom-icon':
              return const IconTokenValueConverter().fromJson(value);
            default:
              return const DesignTokenValue.unknown();
          }
        }

        return const DesignTokenValue.unknown();
      }(),
    );
  }

  @override
  MapEntry<String, Map<String, Object?>> toJson(DesignToken value) {
    final description = value.description;
    return MapEntry(
      value.name,
      {
        if (description != null) 'description': description,
        'value': () {
          return value.value.map(
            unknown: (value) => null,
            dimension: (value) => value.value,
            spacing: (value) =>
                const SpacingTokenValueConverter().toJson(value),
            radius: (value) => const RadiusTokenValueConverter().toJson(value),
            color: (value) => const ColorTokenValueConverter().toJson(value),
            fontStyle: (value) =>
                const FontStyleTokenValueConverter().toJson(value),
            icon: (value) => const IconTokenValueConverter().toJson(value),
          );
        }(),
      },
    );
  }
}

class OffsetConverter implements JsonConverter<Offset, Object?> {
  const OffsetConverter();

  @override
  Offset fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      final x = json['x'];
      final y = json['y'];
      return Offset(
        x is num ? x.toDouble() : 0.0,
        y is num ? y.toDouble() : 0.0,
      );
    }
    return Offset.zero;
  }

  @override
  Object? toJson(Offset value) {
    return {
      'x': value.dx,
      'y': value.dy,
    };
  }
}

class SizeConverter implements JsonConverter<Size, Object?> {
  const SizeConverter();

  @override
  Size fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      final width = json['width'];
      final height = json['height'];
      return Size(
        width is num ? width.toDouble() : 0.0,
        height is num ? height.toDouble() : 0.0,
      );
    }
    return Size.zero;
  }

  @override
  Object? toJson(Size value) {
    return {
      'width': value.width,
      'height': value.height,
    };
  }
}

class WindingRuleConverter implements JsonConverter<PathFillType, Object?> {
  const WindingRuleConverter();

  @override
  PathFillType fromJson(Object? json) {
    if (json is String && json.toLowerCase() == 'evenodd') {
      return PathFillType.evenOdd;
    }
    return PathFillType.evenOdd;
  }

  @override
  Object? toJson(PathFillType value) {
    switch (value) {
      case PathFillType.evenOdd:
        return 'EVENODD';
      case PathFillType.nonZero:
        return 'NONZERO';
    }
  }
}

class ColorTokenValueConverter
    implements JsonConverter<ColorTokenValue, Object?> {
  const ColorTokenValueConverter();

  @override
  ColorTokenValue fromJson(Object? json) {
    if (json is String && json.startsWith('#') && json.length == 9) {
      return ColorTokenValue(
        Color.fromARGB(
          int.parse(json.substring(7), radix: 16),
          int.parse(json.substring(1, 3), radix: 16),
          int.parse(json.substring(3, 5), radix: 16),
          int.parse(json.substring(5, 7), radix: 16),
        ),
      );
    }
    return const ColorTokenValue(Color(0x00000000));
  }

  @override
  Object? toJson(ColorTokenValue value) {
    return '#'
        '${value.value.red.toRadixString(16)}'
        '${value.value.green.toRadixString(16)}'
        '${value.value.blue.toRadixString(16)}'
        '${value.value.alpha.toRadixString(16)}';
  }
}

class IconTokenValueConverter
    implements JsonConverter<IconTokenValue, Object?> {
  const IconTokenValueConverter();

  @override
  IconTokenValue fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      final paths = json['paths'];
      final size = json['size'];
      final offset = json['offset'];
      return IconTokenValue(
        paths: [
          if (paths is List<dynamic>)
            ...paths.map((path) => IconPath.fromJson(path)),
        ],
        size: const SizeConverter().fromJson(size),
        offset: const OffsetConverter().fromJson(offset),
      );
    }
    return const IconTokenValue(
      paths: <IconPath>[],
      size: Size.zero,
      offset: Offset.zero,
    );
  }

  @override
  Object? toJson(IconTokenValue value) {
    return {
      'size': const SizeConverter().toJson(value.size),
      'offset': const OffsetConverter().toJson(value.offset),
      'paths': [
        ...value.paths.map((e) => e.toJson()),
      ],
    };
  }
}

class RadiusTokenValueConverter
    implements JsonConverter<RadiusTokenValue, Object?> {
  const RadiusTokenValueConverter();

  @override
  RadiusTokenValue fromJson(Object? value) {
    if (value is Map<String, dynamic>) {
      final topLeft = value['topLeft'];
      final topRight = value['topRight'];
      final bottomLeft = value['bottomLeft'];
      final bottomRight = value['bottomRight'];
      final smoothing = value['smoothing'];
      return RadiusTokenValue(
        smoothing: smoothing is num ? smoothing.toDouble() : 0.0,
        radius: BorderRadius.only(
          topLeft: topLeft is num
              ? Radius.circular(topLeft.toDouble())
              : Radius.zero,
          topRight: topRight is num
              ? Radius.circular(topRight.toDouble())
              : Radius.zero,
          bottomLeft: bottomLeft is num
              ? Radius.circular(bottomLeft.toDouble())
              : Radius.zero,
          bottomRight: bottomRight is num
              ? Radius.circular(bottomRight.toDouble())
              : Radius.zero,
        ),
      );
    }
    return const RadiusTokenValue(
      smoothing: 0.0,
      radius: BorderRadius.zero,
    );
  }

  @override
  Object? toJson(RadiusTokenValue value) {
    return {
      'smoothing': value.smoothing,
      'topLeft': value.radius.topLeft.x,
      'topRight': value.radius.topRight.x,
      'bottomLeft': value.radius.bottomLeft.x,
      'bottomRight': value.radius.bottomRight.x,
    };
  }
}

class SpacingTokenValueConverter
    implements JsonConverter<SpacingTokenValue, Object?> {
  const SpacingTokenValueConverter();

  @override
  SpacingTokenValue fromJson(Object? value) {
    if (value is Map<String, dynamic>) {
      final left = value['left'];
      final right = value['right'];
      final top = value['top'];
      final bottom = value['bottom'];
      return SpacingTokenValue(
        EdgeInsets.only(
          left: left is num ? left.toDouble() : 0.0,
          right: right is num ? right.toDouble() : 0.0,
          top: top is num ? top.toDouble() : 0.0,
          bottom: left is num ? bottom.toDouble() : 0.0,
        ),
      );
    }
    return const SpacingTokenValue(EdgeInsets.zero);
  }

  @override
  Object? toJson(SpacingTokenValue value) {
    return {
      'left': value.value.left,
      'right': value.value.right,
      'top': value.value.top,
      'bottom': value.value.bottom,
    };
  }
}

class FontStyleTokenValueConverter
    implements JsonConverter<FontStyleTokenValue, Object?> {
  const FontStyleTokenValueConverter();

  @override
  FontStyleTokenValue fromJson(Object? value) {
    if (value is Map<String, dynamic>) {
      final fontSize = value['fontSize'];
      final fontFamily = value['fontFamily'];
      final fontWeight = value['fontWeight'];
      final textDecoration = value['textDecoration'];
      final fontStyle = value['fontStyle'];
      final letterSpacing = value['letterSpacing'];

      return FontStyleTokenValue(
        textStyle: TextStyle(
          fontSize: fontSize is num ? fontSize.toDouble() : 0.0,
          fontFamily: fontFamily is String ? fontFamily : null,
          letterSpacing: letterSpacing is num ? letterSpacing.toDouble() : 0.0,
          fontWeight: fontWeight is num
              ? FontWeight.values.firstWhere(
                  (value) => (value.index + 1) * 100 == fontWeight,
                  orElse: () => FontWeight.w400,
                )
              : FontWeight.w400,
          decoration: () {
            switch (textDecoration) {
              case 'line-through':
                return TextDecoration.lineThrough;
              case 'underline':
                return TextDecoration.underline;
              default:
                return TextDecoration.none;
            }
          }(),
          fontStyle: () {
            switch (fontStyle) {
              case 'italic':
                return FontStyle.italic;
              default:
                return FontStyle.normal;
            }
          }(),
        ),
      );
    }
    return const FontStyleTokenValue(
      textStyle: TextStyle(),
    );
  }

  @override
  Object? toJson(FontStyleTokenValue value) {
    return {
      if (value.textStyle.fontSize != null)
        'fontSize': value.textStyle.fontSize,
      if (value.textStyle.fontFamily != null)
        'fontFamily': value.textStyle.fontFamily,
      if (value.textStyle.letterSpacing != null)
        'letterSpacing': value.textStyle.letterSpacing,
      if (value.textStyle.fontWeight != null)
        'fontWeight': (value.textStyle.fontWeight!.index + 1) * 100,
      if (value.textStyle.decoration != null)
        'decoration': () {
          if (value.textStyle.decoration == TextDecoration.lineThrough) {
            return 'line-through';
          }
          if (value.textStyle.decoration == TextDecoration.underline) {
            return 'underline';
          }
          return null;
        }(),
      if (value.textStyle.fontStyle != null)
        'fontStyle': () {
          if (value.textStyle.fontStyle == FontStyle.italic) {
            return 'italic';
          }
          return null;
        }(),
    };
  }
}
