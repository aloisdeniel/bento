import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

import 'parser.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class BentoTheme with _$BentoTheme {
  const BentoTheme._();

  const factory BentoTheme({
    required String name,
    required List<DesignToken> tokens,
    @Default(<BentoTheme>[]) List<BentoTheme> children,
    String? description,
  }) = _BentoTheme;

  BentoTheme? getChildLibrary(Iterable<String> path) {
    if (path.isEmpty) return this;
    final childKey = path.first;

    final child = children.firstWhereOrNull((child) => child.name == childKey);

    if (child != null) {
      return child.getChildLibrary(
        path.toList().getRange(1, path.length),
      );
    }

    return null;
  }

  DesignToken? getToken(String name) {
    return tokens.firstWhereOrNull((token) => token.name == name);
  }
}

@freezed
class DesignToken with _$DesignToken {
  const factory DesignToken({
    required String name,
    required DesignTokenValue value,
    String? description,
  }) = _DesignToken;
}

@freezed
class DesignTokenValue with _$DesignTokenValue {
  const factory DesignTokenValue.unknown() = UnknownTokenValue;
  const factory DesignTokenValue.dimension(double value) = SizeTokenValue;
  const factory DesignTokenValue.color([
    @Default(Color(0xFF000000)) @ColorTokenValueConverter() Color value,
  ]) = ColorTokenValue;
  const factory DesignTokenValue.radius({
    @Default(0.0) double smoothing,
    @Default(BorderRadius.zero) BorderRadius radius,
  }) = RadiusTokenValue;
  const factory DesignTokenValue.spacing(EdgeInsets value) = SpacingTokenValue;
  const factory DesignTokenValue.fontStyle({
    required TextStyle textStyle,
  }) = FontStyleTokenValue;
  const factory DesignTokenValue.icon({
    required List<IconPath> paths,
    required Size size,
    required Offset offset,
  }) = IconTokenValue;
}

@freezed
class IconPath with _$IconPath {
  const IconPath._();

  const factory IconPath({
    required String data,
    @Default(PathFillType.nonZero)
    @WindingRuleConverter()
        PathFillType windingRule,
  }) = _IconPath;

  factory IconPath.fromJson(Map<String, Object?> json) =>
      _$IconPathFromJson(json);
}

class Color {
  const Color(this.value);

  const Color.fromARGB(int a, int r, int g, int b)
      : value = (((a & 0xff) << 24) |
                ((r & 0xff) << 16) |
                ((g & 0xff) << 8) |
                ((b & 0xff) << 0)) &
            0xFFFFFFFF;

  final int value;

  int get alpha => (0xff000000 & value) >> 24;

  double get opacity => alpha / 0xFF;

  int get red => (0x00ff0000 & value) >> 16;

  int get green => (0x0000ff00 & value) >> 8;

  int get blue => (0x000000ff & value) >> 0;
}

class Size {
  const Size(this.width, this.height);
  final double width;
  final double height;
  static const Size zero = Size(0, 0);
}

class Offset {
  const Offset(this.dx, this.dy);
  final double dx;
  final double dy;

  static const Offset zero = Offset(0, 0);
}

enum PathFillType {
  nonZero,
  evenOdd,
}

class EdgeInsets {
  const EdgeInsets.only({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });
  final double left;
  final double right;
  final double bottom;
  final double top;

  static const EdgeInsets zero = EdgeInsets.only(
    left: 0,
    top: 0,
    right: 0,
    bottom: 0,
  );
}

class BorderRadius {
  const BorderRadius.only({
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });
  final Radius topLeft;
  final Radius topRight;
  final Radius bottomLeft;
  final Radius bottomRight;

  static const BorderRadius zero = BorderRadius.only(
    topLeft: Radius.zero,
    topRight: Radius.zero,
    bottomLeft: Radius.zero,
    bottomRight: Radius.zero,
  );
}

class Radius {
  const Radius.circular(this.x);
  final double x;

  static const Radius zero = Radius.circular(0);
}

class TextStyle {
  const TextStyle({
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.decoration,
    this.height,
    this.fontStyle,
  });
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? height;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
}

enum FontWeight {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900,
}

enum TextDecoration {
  none,
  lineThrough,
  underline,
}

enum FontStyle {
  normal,
  italic,
}
