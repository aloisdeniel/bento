import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'package:path_drawing/path_drawing.dart';

import 'parser.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class BentoTheme with _$BentoTheme {
  const BentoTheme._();

  const factory BentoTheme({
    required List<DesignToken> tokens,
    @Default(<String, BentoTheme>{}) Map<String, BentoTheme> children,
  }) = _BentoTheme;

  BentoTheme? getChildLibrary(Iterable<String> path) {
    if (path.isEmpty) return this;
    final childKey = path.first;

    if (children.containsKey(childKey)) {
      return children[childKey]!.getChildLibrary(
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
  }) = IconTokenValue;
}

@freezed
class IconPath with _$IconPath {
  const IconPath._();

  const factory IconPath({
    required String data,
    @Default(PathFillType.nonZero) PathFillType windingRule,
  }) = _IconPath;

  factory IconPath.fromJson(Map<String, Object?> json) =>
      _$IconPathFromJson(json);

  Path toPath() => parseSvgPathData(data)..fillType = windingRule;
}
