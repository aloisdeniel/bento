// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/widgets.dart';
import 'package:path_icon/path_icon.dart';

class AppThemeData {
  const AppThemeData(
      {required this.sizes,
      required this.breakpoints,
      required this.spacing,
      required this.borders,
      required this.radius,
      required this.radii,
      required this.motion,
      required this.gradient,
      required this.color,
      required this.grid,
      required this.font,
      required this.effect,
      required this.typography,
      required this.icons});

  static AppThemeData fallback = _AppThemeDataInstance();

  final AppThemeSizesData sizes;

  final AppThemeBreakpointsData breakpoints;

  final AppThemeSpacingData spacing;

  final AppThemeBordersData borders;

  final AppThemeRadiusData radius;

  final AppThemeRadiiData radii;

  final AppThemeMotionData motion;

  final AppThemeGradientData gradient;

  final AppThemeColorData color;

  final AppThemeGridData grid;

  final AppThemeFontData font;

  final AppThemeEffectData effect;

  final AppThemeTypographyData typography;

  final AppThemeIconsData icons;
}

class _AppThemeDataInstance implements AppThemeData {
  _AppThemeDataInstance();

  @override
  late final sizes = AppThemeSizesData.fallback;

  @override
  late final breakpoints = AppThemeBreakpointsData.fallback;

  @override
  late final spacing = AppThemeSpacingData.fallback;

  @override
  late final borders = AppThemeBordersData.fallback;

  @override
  late final radius = AppThemeRadiusData.fallback;

  @override
  late final radii = AppThemeRadiiData.fallback;

  @override
  late final motion = AppThemeMotionData.fallback;

  @override
  late final gradient = AppThemeGradientData.fallback;

  @override
  late final color = AppThemeColorData.fallback;

  @override
  late final grid = AppThemeGridData.fallback;

  @override
  late final font = AppThemeFontData.fallback;

  @override
  late final effect = AppThemeEffectData.fallback;

  @override
  late final typography = AppThemeTypographyData.fallback;

  @override
  late final icons = AppThemeIconsData.fallback;
}

class AppThemeSizesData {
  const AppThemeSizesData(
      {required this.v32,
      required this.v40,
      required this.v60,
      required this.v80,
      required this.plainToken,
      required this.tokenInFrame,
      required this.tokenInGroup,
      required this.inVariant60,
      required this.inVariant90,
      required this.inVariant120,
      required this.frame,
      required this.rect,
      required this.shapeInComponent});

  static AppThemeSizesData fallback = _AppThemeSizesDataInstance();

  final double v32;

  final double v40;

  final double v60;

  final double v80;

  final double plainToken;

  final double tokenInFrame;

  final double tokenInGroup;

  final double inVariant60;

  final double inVariant90;

  final double inVariant120;

  final double frame;

  final double rect;

  final double shapeInComponent;
}

class _AppThemeSizesDataInstance implements AppThemeSizesData {
  _AppThemeSizesDataInstance();

  @override
  late final v32 = 32.72;

  @override
  late final v40 = 40.0;

  @override
  late final v60 = 60.0;

  @override
  late final v80 = 80.0;

  @override
  late final plainToken = 200.0;

  @override
  late final tokenInFrame = 200.0;

  @override
  late final tokenInGroup = 200.0;

  @override
  late final inVariant60 = 60.0;

  @override
  late final inVariant90 = 90.0;

  @override
  late final inVariant120 = 120.0;

  @override
  late final frame = 32.0;

  @override
  late final rect = 32.0;

  @override
  late final shapeInComponent = 32.0;
}

class AppThemeBreakpointsData {
  const AppThemeBreakpointsData(
      {required this.lg, required this.sm, required this.md});

  static AppThemeBreakpointsData fallback = _AppThemeBreakpointsDataInstance();

  final double lg;

  final double sm;

  final double md;
}

class _AppThemeBreakpointsDataInstance implements AppThemeBreakpointsData {
  _AppThemeBreakpointsDataInstance();

  @override
  late final lg = 1280.0;

  @override
  late final sm = 768.0;

  @override
  late final md = 1024.0;
}

class AppThemeSpacingData {
  const AppThemeSpacingData(
      {required this.v10, required this.mixed, required this.top});

  static AppThemeSpacingData fallback = _AppThemeSpacingDataInstance();

  final EdgeInsets v10;

  final EdgeInsets mixed;

  final EdgeInsets top;
}

class _AppThemeSpacingDataInstance implements AppThemeSpacingData {
  _AppThemeSpacingDataInstance();

  @override
  late final v10 = const EdgeInsets.all(10.0);

  @override
  late final mixed = const EdgeInsets.only(
    top: 10.0,
    left: 20.0,
    right: 20.0,
    bottom: 30.0,
  );

  @override
  late final top = const EdgeInsets.only(
    top: 10.0,
    left: 0.0,
    right: 0.0,
    bottom: 0.0,
  );
}

class AppThemeBordersData {
  const AppThemeBordersData({required this.unsupported});

  static AppThemeBordersData fallback = _AppThemeBordersDataInstance();

  final AppThemeBordersUnsupportedData unsupported;
}

class _AppThemeBordersDataInstance implements AppThemeBordersData {
  _AppThemeBordersDataInstance();

  @override
  late final unsupported = AppThemeBordersUnsupportedData.fallback;
}

class AppThemeBordersUnsupportedData {
  const AppThemeBordersUnsupportedData();

  static AppThemeBordersUnsupportedData fallback =
      _AppThemeBordersUnsupportedDataInstance();
}

class _AppThemeBordersUnsupportedDataInstance
    implements AppThemeBordersUnsupportedData {
  _AppThemeBordersUnsupportedDataInstance();
}

class AppThemeRadiusData {
  const AppThemeRadiusData({required this.v5});

  static AppThemeRadiusData fallback = _AppThemeRadiusDataInstance();

  final BorderRadius v5;
}

class _AppThemeRadiusDataInstance implements AppThemeRadiusData {
  _AppThemeRadiusDataInstance();

  @override
  late final v5 = const BorderRadius.only(
    topLeft: Radius.circular(5.0),
    topRight: Radius.circular(5.0),
    bottomLeft: Radius.circular(5.0),
    bottomRight: Radius.circular(5.0),
  );
}

class AppThemeRadiiData {
  const AppThemeRadiiData({required this.smoothing, required this.mixed});

  static AppThemeRadiiData fallback = _AppThemeRadiiDataInstance();

  final BorderRadius smoothing;

  final BorderRadius mixed;
}

class _AppThemeRadiiDataInstance implements AppThemeRadiiData {
  _AppThemeRadiiDataInstance();

  @override
  late final smoothing = const BorderRadius.only(
    topLeft: Radius.circular(10.0),
    topRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
  );

  @override
  late final mixed = const BorderRadius.only(
    topLeft: Radius.circular(5.5),
    topRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(20.0),
    bottomRight: Radius.circular(15.0),
  );
}

class AppThemeMotionData {
  const AppThemeMotionData();

  static AppThemeMotionData fallback = _AppThemeMotionDataInstance();
}

class _AppThemeMotionDataInstance implements AppThemeMotionData {
  _AppThemeMotionDataInstance();
}

class AppThemeGradientData {
  const AppThemeGradientData({required this.gradient});

  static AppThemeGradientData fallback = _AppThemeGradientDataInstance();

  final AppThemeGradientGradientData gradient;
}

class _AppThemeGradientDataInstance implements AppThemeGradientData {
  _AppThemeGradientDataInstance();

  @override
  late final gradient = AppThemeGradientGradientData.fallback;
}

class AppThemeGradientGradientData {
  const AppThemeGradientGradientData({required this.multiplegrad});

  static AppThemeGradientGradientData fallback =
      _AppThemeGradientGradientDataInstance();

  final AppThemeGradientGradientMultiplegradData multiplegrad;
}

class _AppThemeGradientGradientDataInstance
    implements AppThemeGradientGradientData {
  _AppThemeGradientGradientDataInstance();

  @override
  late final multiplegrad = AppThemeGradientGradientMultiplegradData.fallback;
}

class AppThemeGradientGradientMultiplegradData {
  const AppThemeGradientGradientMultiplegradData();

  static AppThemeGradientGradientMultiplegradData fallback =
      _AppThemeGradientGradientMultiplegradDataInstance();
}

class _AppThemeGradientGradientMultiplegradDataInstance
    implements AppThemeGradientGradientMultiplegradData {
  _AppThemeGradientGradientMultiplegradDataInstance();
}

class AppThemeColorData {
  const AppThemeColorData(
      {required this.colors,
      required this.invalid,
      required this.light,
      required this.dark});

  static AppThemeColorData fallback = _AppThemeColorDataInstance();

  final AppThemeColorColorsData colors;

  final AppThemeColorInvalidData invalid;

  final AppThemeColorLightData light;

  final AppThemeColorDarkData dark;
}

class _AppThemeColorDataInstance implements AppThemeColorData {
  _AppThemeColorDataInstance();

  @override
  late final colors = AppThemeColorColorsData.fallback;

  @override
  late final invalid = AppThemeColorInvalidData.fallback;

  @override
  late final light = AppThemeColorLightData.fallback;

  @override
  late final dark = AppThemeColorDarkData.fallback;
}

class AppThemeColorColorsData {
  const AppThemeColorColorsData(
      {required this.singleBlue,
      required this.refBlue,
      required this.multipleFills,
      required this.specialCharacters});

  static AppThemeColorColorsData fallback = _AppThemeColorColorsDataInstance();

  final Color singleBlue;

  final Color refBlue;

  final AppThemeColorColorsMultipleFillsData multipleFills;

  final AppThemeColorColorsSpecialCharactersData specialCharacters;
}

class _AppThemeColorColorsDataInstance implements AppThemeColorColorsData {
  _AppThemeColorColorsDataInstance();

  @override
  late final singleBlue = const Color(0xff044aff);

  @override
  late final refBlue = const Color(0x0);

  @override
  late final multipleFills = AppThemeColorColorsMultipleFillsData.fallback;

  @override
  late final specialCharacters =
      AppThemeColorColorsSpecialCharactersData.fallback;
}

class AppThemeColorColorsMultipleFillsData {
  const AppThemeColorColorsMultipleFillsData(
      {required this.v0, required this.v1});

  static AppThemeColorColorsMultipleFillsData fallback =
      _AppThemeColorColorsMultipleFillsDataInstance();

  final Color v0;

  final Color v1;
}

class _AppThemeColorColorsMultipleFillsDataInstance
    implements AppThemeColorColorsMultipleFillsData {
  _AppThemeColorColorsMultipleFillsDataInstance();

  @override
  late final v0 = const Color(0xff40ffba);

  @override
  late final v1 = const Color(0x1a000000);
}

class AppThemeColorColorsSpecialCharactersData {
  const AppThemeColorColorsSpecialCharactersData(
      {required this.c55357c56837, required this.c228nderung});

  static AppThemeColorColorsSpecialCharactersData fallback =
      _AppThemeColorColorsSpecialCharactersDataInstance();

  final Color c55357c56837;

  final Color c228nderung;
}

class _AppThemeColorColorsSpecialCharactersDataInstance
    implements AppThemeColorColorsSpecialCharactersData {
  _AppThemeColorColorsSpecialCharactersDataInstance();

  @override
  late final c55357c56837 = const Color(0xff40df50);

  @override
  late final c228nderung = const Color(0xff3456af);
}

class AppThemeColorInvalidData {
  const AppThemeColorInvalidData({required this.empty});

  static AppThemeColorInvalidData fallback =
      _AppThemeColorInvalidDataInstance();

  final Color empty;
}

class _AppThemeColorInvalidDataInstance implements AppThemeColorInvalidData {
  _AppThemeColorInvalidDataInstance();

  @override
  late final empty = const Color(0x0);
}

class AppThemeColorLightData {
  const AppThemeColorLightData({required this.background});

  static AppThemeColorLightData fallback = _AppThemeColorLightDataInstance();

  final Color background;
}

class _AppThemeColorLightDataInstance implements AppThemeColorLightData {
  _AppThemeColorLightDataInstance();

  @override
  late final background = const Color(0xffffffff);
}

class AppThemeColorDarkData {
  const AppThemeColorDarkData({required this.background});

  static AppThemeColorDarkData fallback = _AppThemeColorDarkDataInstance();

  final Color background;
}

class _AppThemeColorDarkDataInstance implements AppThemeColorDarkData {
  _AppThemeColorDarkDataInstance();

  @override
  late final background = const Color(0xff000000);
}

class AppThemeGridData {
  const AppThemeGridData({required this.multiple});

  static AppThemeGridData fallback = _AppThemeGridDataInstance();

  final AppThemeGridMultipleData multiple;
}

class _AppThemeGridDataInstance implements AppThemeGridData {
  _AppThemeGridDataInstance();

  @override
  late final multiple = AppThemeGridMultipleData.fallback;
}

class AppThemeGridMultipleData {
  const AppThemeGridMultipleData();

  static AppThemeGridMultipleData fallback =
      _AppThemeGridMultipleDataInstance();
}

class _AppThemeGridMultipleDataInstance implements AppThemeGridMultipleData {
  _AppThemeGridMultipleDataInstance();
}

class AppThemeFontData {
  const AppThemeFontData({required this.body});

  static AppThemeFontData fallback = _AppThemeFontDataInstance();

  final AppThemeFontBodyData body;
}

class _AppThemeFontDataInstance implements AppThemeFontData {
  _AppThemeFontDataInstance();

  @override
  late final body = AppThemeFontBodyData.fallback;
}

class AppThemeFontBodyData {
  const AppThemeFontBodyData(
      {required this.h3,
      required this.h4StrikeThrough,
      required this.italic,
      required this.extraBoldCondensedItalic,
      required this.mediumExtendedItalic,
      required this.super$});

  static AppThemeFontBodyData fallback = _AppThemeFontBodyDataInstance();

  final TextStyle h3;

  final TextStyle h4StrikeThrough;

  final TextStyle italic;

  final TextStyle extraBoldCondensedItalic;

  final TextStyle mediumExtendedItalic;

  final TextStyle super$;
}

class _AppThemeFontBodyDataInstance implements AppThemeFontBodyData {
  _AppThemeFontBodyDataInstance();

  @override
  late final h3 = const TextStyle(
    fontFamily: 'Akzidenz-Grotesk Pro',
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.normal,
  );

  @override
  late final h4StrikeThrough = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.0,
    decoration: TextDecoration.lineThrough,
    fontStyle: FontStyle.italic,
  );

  @override
  late final italic = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );

  @override
  late final extraBoldCondensedItalic = const TextStyle(
    fontFamily: 'Akzidenz-Grotesk Pro',
    fontSize: 12.0,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.0,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );

  @override
  late final mediumExtendedItalic = const TextStyle(
    fontFamily: 'Akzidenz-Grotesk Pro',
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.0,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );

  @override
  late final super$ = const TextStyle(
    fontFamily: 'Akzidenz-Grotesk Pro',
    fontSize: 22.0,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.0,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.normal,
  );
}

class AppThemeEffectData {
  const AppThemeEffectData({required this.innerShadowMultiple});

  static AppThemeEffectData fallback = _AppThemeEffectDataInstance();

  final AppThemeEffectInnerShadowMultipleData innerShadowMultiple;
}

class _AppThemeEffectDataInstance implements AppThemeEffectData {
  _AppThemeEffectDataInstance();

  @override
  late final innerShadowMultiple =
      AppThemeEffectInnerShadowMultipleData.fallback;
}

class AppThemeEffectInnerShadowMultipleData {
  const AppThemeEffectInnerShadowMultipleData();

  static AppThemeEffectInnerShadowMultipleData fallback =
      _AppThemeEffectInnerShadowMultipleDataInstance();
}

class _AppThemeEffectInnerShadowMultipleDataInstance
    implements AppThemeEffectInnerShadowMultipleData {
  _AppThemeEffectInnerShadowMultipleDataInstance();
}

class AppThemeEffectLayerBlurData {
  const AppThemeEffectLayerBlurData();

  static AppThemeEffectLayerBlurData fallback =
      _AppThemeEffectLayerBlurDataInstance();
}

class _AppThemeEffectLayerBlurDataInstance
    implements AppThemeEffectLayerBlurData {
  _AppThemeEffectLayerBlurDataInstance();
}

class AppThemeEffectBackgroundBlurData {
  const AppThemeEffectBackgroundBlurData();

  static AppThemeEffectBackgroundBlurData fallback =
      _AppThemeEffectBackgroundBlurDataInstance();
}

class _AppThemeEffectBackgroundBlurDataInstance
    implements AppThemeEffectBackgroundBlurData {
  _AppThemeEffectBackgroundBlurDataInstance();
}

class AppThemeTypographyData {
  const AppThemeTypographyData({required this.body});

  static AppThemeTypographyData fallback = _AppThemeTypographyDataInstance();

  final AppThemeTypographyBodyData body;
}

class _AppThemeTypographyDataInstance implements AppThemeTypographyData {
  _AppThemeTypographyDataInstance();

  @override
  late final body = AppThemeTypographyBodyData.fallback;
}

class AppThemeTypographyBodyData {
  const AppThemeTypographyBodyData(
      {required this.h3,
      required this.h4StrikeThrough,
      required this.italic,
      required this.extraBoldCondensedItalic,
      required this.mediumExtendedItalic,
      required this.super$});

  static AppThemeTypographyBodyData fallback =
      _AppThemeTypographyBodyDataInstance();

  final AppThemeTypographyBodyH3Data h3;

  final AppThemeTypographyBodyH4StrikeThroughData h4StrikeThrough;

  final AppThemeTypographyBodyItalicData italic;

  final AppThemeTypographyBodyExtraBoldCondensedItalicData
      extraBoldCondensedItalic;

  final AppThemeTypographyBodyMediumExtendedItalicData mediumExtendedItalic;

  final AppThemeTypographyBodySuperData super$;
}

class _AppThemeTypographyBodyDataInstance
    implements AppThemeTypographyBodyData {
  _AppThemeTypographyBodyDataInstance();

  @override
  late final h3 = AppThemeTypographyBodyH3Data.fallback;

  @override
  late final h4StrikeThrough =
      AppThemeTypographyBodyH4StrikeThroughData.fallback;

  @override
  late final italic = AppThemeTypographyBodyItalicData.fallback;

  @override
  late final extraBoldCondensedItalic =
      AppThemeTypographyBodyExtraBoldCondensedItalicData.fallback;

  @override
  late final mediumExtendedItalic =
      AppThemeTypographyBodyMediumExtendedItalicData.fallback;

  @override
  late final super$ = AppThemeTypographyBodySuperData.fallback;
}

class AppThemeTypographyBodyH3Data {
  const AppThemeTypographyBodyH3Data(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodyH3Data fallback =
      _AppThemeTypographyBodyH3DataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodyH3DataInstance
    implements AppThemeTypographyBodyH3Data {
  _AppThemeTypographyBodyH3DataInstance();

  @override
  late final fontSize = 20.0;

  @override
  late final letterSpacing = 0.4;

  @override
  late final lineHeight = 32.0;

  @override
  late final paragraphIndent = 5.0;

  @override
  late final paragraphSpacing = 8.0;
}

class AppThemeTypographyBodyH4StrikeThroughData {
  const AppThemeTypographyBodyH4StrikeThroughData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodyH4StrikeThroughData fallback =
      _AppThemeTypographyBodyH4StrikeThroughDataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodyH4StrikeThroughDataInstance
    implements AppThemeTypographyBodyH4StrikeThroughData {
  _AppThemeTypographyBodyH4StrikeThroughDataInstance();

  @override
  late final fontSize = 16.0;

  @override
  late final letterSpacing = 0.0;

  @override
  late final lineHeight = 19.2;

  @override
  late final paragraphIndent = 0.0;

  @override
  late final paragraphSpacing = 0.0;
}

class AppThemeTypographyBodyItalicData {
  const AppThemeTypographyBodyItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodyItalicData fallback =
      _AppThemeTypographyBodyItalicDataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodyItalicDataInstance
    implements AppThemeTypographyBodyItalicData {
  _AppThemeTypographyBodyItalicDataInstance();

  @override
  late final fontSize = 12.0;

  @override
  late final letterSpacing = 0.0;

  @override
  late final lineHeight = 14.0;

  @override
  late final paragraphIndent = 0.0;

  @override
  late final paragraphSpacing = 0.0;
}

class AppThemeTypographyBodyExtraBoldCondensedItalicData {
  const AppThemeTypographyBodyExtraBoldCondensedItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodyExtraBoldCondensedItalicData fallback =
      _AppThemeTypographyBodyExtraBoldCondensedItalicDataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodyExtraBoldCondensedItalicDataInstance
    implements AppThemeTypographyBodyExtraBoldCondensedItalicData {
  _AppThemeTypographyBodyExtraBoldCondensedItalicDataInstance();

  @override
  late final fontSize = 12.0;

  @override
  late final letterSpacing = 0.0;

  @override
  late final lineHeight = 14.4;

  @override
  late final paragraphIndent = 0.0;

  @override
  late final paragraphSpacing = 0.0;
}

class AppThemeTypographyBodyMediumExtendedItalicData {
  const AppThemeTypographyBodyMediumExtendedItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodyMediumExtendedItalicData fallback =
      _AppThemeTypographyBodyMediumExtendedItalicDataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodyMediumExtendedItalicDataInstance
    implements AppThemeTypographyBodyMediumExtendedItalicData {
  _AppThemeTypographyBodyMediumExtendedItalicDataInstance();

  @override
  late final fontSize = 20.0;

  @override
  late final letterSpacing = 0.0;

  @override
  late final lineHeight = 24.0;

  @override
  late final paragraphIndent = 0.0;

  @override
  late final paragraphSpacing = 0.0;
}

class AppThemeTypographyBodySuperData {
  const AppThemeTypographyBodySuperData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static AppThemeTypographyBodySuperData fallback =
      _AppThemeTypographyBodySuperDataInstance();

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;
}

class _AppThemeTypographyBodySuperDataInstance
    implements AppThemeTypographyBodySuperData {
  _AppThemeTypographyBodySuperDataInstance();

  @override
  late final fontSize = 22.0;

  @override
  late final letterSpacing = 0.0;

  @override
  late final lineHeight = 26.4;

  @override
  late final paragraphIndent = 0.0;

  @override
  late final paragraphSpacing = 0.0;
}

class AppThemeIconsData {
  const AppThemeIconsData(
      {required this.propagation,
      required this.productMenuClosed,
      required this.pasteWord,
      required this.paperclip,
      required this.pageTree,
      required this.phone});

  static AppThemeIconsData fallback = _AppThemeIconsDataInstance();

  final PathIconData propagation;

  final PathIconData productMenuClosed;

  final PathIconData pasteWord;

  final PathIconData paperclip;

  final PathIconData pageTree;

  final PathIconData phone;
}

class _AppThemeIconsDataInstance implements AppThemeIconsData {
  _AppThemeIconsDataInstance();

  @override
  late final propagation = PathIconData(
    path: Path()
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(11.5, 3.5)
          ..cubicTo(11.5, 5.43299674987793, 9.93299674987793, 7.0, 8.0, 7.0)
          ..cubicTo(6.06700325012207, 7.0, 4.5, 5.43299674987793, 4.5, 3.5)
          ..cubicTo(4.5, 1.5670033693313599, 6.06700325012207, 0.0, 8.0, 0.0)
          ..cubicTo(9.93299674987793, 0.0, 11.5, 1.5670033693313599, 11.5, 3.5)
          ..close(),
        Offset.zero,
      )
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(1.0, 10.299994468688965)
          ..lineTo(4.143750190734863, 7.159369468688965)
          ..cubicTo(4.596875190734863, 6.712494373321533, 5.3125,
              7.331244468688965, 4.849999904632568, 7.86561918258667)
          ..lineTo(1.715625047683716, 10.999994277954102)
          ..lineTo(2.075000047683716, 10.999994277954102)
          ..cubicTo(2.7218751907348633, 11.006244659423828, 2.7531251907348633,
              11.974994659423828, 2.075000047683716, 11.999994277954102)
          ..lineTo(0.5, 11.999994277954102)
          ..cubicTo(0.22499999403953558, 11.999994277954102, 0.0,
              11.774993896484375, 0.0, 11.499994277954102)
          ..lineTo(0.0, 9.924994468688965)
          ..cubicTo(0.015625000000000003, 9.262495040893555, 1.0,
              9.265619277954102, 1.0, 9.924994468688965)
          ..lineTo(1.0, 10.299994468688965)
          ..close(),
        Offset.zero,
      )
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(14.999682426452637, 10.299994468688965)
          ..lineTo(11.855941772460938, 7.159369468688965)
          ..cubicTo(11.402817726135254, 6.712494373321533, 10.68719482421875,
              7.331244468688965, 11.149693489074707, 7.86561918258667)
          ..lineTo(14.284059524536133, 10.999994277954102)
          ..lineTo(13.92468547821045, 10.999994277954102)
          ..cubicTo(13.277812957763672, 11.006244659423828, 13.246562957763672,
              11.974994659423828, 13.92468547821045, 11.999994277954102)
          ..lineTo(15.499680519104004, 11.999994277954102)
          ..cubicTo(15.774680137634277, 11.999994277954102, 15.999679565429688,
              11.774993896484375, 15.999679565429688, 11.499994277954102)
          ..lineTo(15.999679565429688, 9.924994468688965)
          ..cubicTo(15.984054565429688, 9.262494087219238, 14.999682426452637,
              9.265619277954102, 14.999682426452637, 9.924994468688965)
          ..lineTo(14.999682426452637, 10.299994468688965)
          ..close(),
        Offset.zero,
      )
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(7.5065741539001465, 9.506209373474121)
          ..lineTo(7.5065741539001465, 14.299959182739258)
          ..lineTo(7.2409491539001465, 14.034334182739258)
          ..cubicTo(6.775323867797852, 13.568708419799805, 6.075324535369873,
              14.262458801269531, 6.534699440002441, 14.740583419799805)
          ..lineTo(7.6471991539001465, 15.853082656860352)
          ..cubicTo(7.840949058532715, 16.046833038330078, 8.159698486328125,
              16.046833038330078, 8.353448867797852, 15.853082656860352)
          ..lineTo(9.465949058532715, 14.740583419799805)
          ..cubicTo(9.928448677062988, 14.243708610534668, 9.222198486328125,
              13.581209182739258, 8.759698867797852, 14.034334182739258)
          ..lineTo(8.506574630737305, 14.287458419799805)
          ..lineTo(8.506574630737305, 9.506209373474121)
          ..cubicTo(8.453449249267578, 8.803084373474121, 7.50969934463501,
              8.868708610534668, 7.5065741539001465, 9.506209373474121)
          ..close(),
        Offset.zero,
      ),
    viewBox: Offset.zero & Size(15.999679565429688, 15.998395919799805),
  );

  @override
  late final productMenuClosed = PathIconData(
    path: Path()
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(0.0, 0.9687500000000001)
          ..cubicTo(0.0, 0.4343872070312501, 0.43457031250000006, 0.0,
              0.9687500000000001, 0.0)
          ..cubicTo(1.505859375, 0.0, 1.9404296875, 0.4343872070312501, 1.9375,
              0.9687500000000001)
          ..lineTo(1.9375, 15.03125)
          ..cubicTo(1.9375, 15.56561279296875, 1.5029296875, 16.0,
              0.9687500000000001, 16.0)
          ..cubicTo(
              0.43457031250000006, 16.0, 0.0, 15.56561279296875, 0.0, 15.03125)
          ..lineTo(0.0, 0.9687500000000001)
          ..close(),
        Offset.zero,
      )
      ..addPath(
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(14.5, 16.0)
          ..lineTo(4.5, 16.0)
          ..cubicTo(3.671875, 16.0, 3.0, 15.328125, 3.0, 14.5)
          ..lineTo(3.0, 1.5)
          ..cubicTo(3.0, 0.6749877929687501, 3.671875, 0.0, 4.5, 0.0)
          ..lineTo(14.5, 0.0)
          ..cubicTo(15.328125, 0.0, 16.0, 0.6718750000000002, 16.0, 1.5)
          ..lineTo(16.0, 14.5)
          ..cubicTo(16.0, 15.32501220703125, 15.3251953125, 16.0, 14.5, 16.0)
          ..close()
          ..moveTo(5.0, 14.0)
          ..lineTo(14.0, 14.0)
          ..lineTo(14.0, 2.0)
          ..lineTo(5.0, 2.0)
          ..lineTo(5.0, 14.0)
          ..close(),
        Offset.zero,
      ),
    viewBox: Offset.zero & Size(16.0, 16.0),
  );

  @override
  late final pasteWord = PathIconData(
    path: Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(12.0, 5.0)
      ..lineTo(10.0, 5.0)
      ..lineTo(10.0, 1.8709375858306885)
      ..cubicTo(10.0, 0.8375000953674315, 9.162500143051147, 0.0,
          8.12906265258789, 0.0)
      ..lineTo(1.8709375858306885, 0.0)
      ..cubicTo(0.8375000953674315, 0.0, 0.0, 0.8375000953674315, 0.0,
          1.8709375858306885)
      ..lineTo(0.0, 10.129375457763672)
      ..cubicTo(0.0, 11.162500500679016, 0.8375000953674315, 12.0,
          1.8709375858306885, 12.0)
      ..lineTo(4.0, 12.0)
      ..lineTo(4.0, 13.0)
      ..cubicTo(4.0, 14.104687452316284, 4.895312547683716, 15.0, 6.0, 15.0)
      ..lineTo(12.0, 15.0)
      ..cubicTo(13.104687452316284, 15.0, 14.0, 14.104687452316284, 14.0, 13.0)
      ..lineTo(14.0, 7.0)
      ..cubicTo(14.0, 5.895312547683716, 13.104687452316284, 5.0, 12.0, 5.0)
      ..close()
      ..moveTo(4.0, 7.0)
      ..lineTo(4.0, 10.0)
      ..lineTo(2.0, 10.0)
      ..lineTo(2.0, 2.0)
      ..lineTo(3.0, 2.0)
      ..cubicTo(3.0, 2.5521875023841862, 3.447812497615814, 3.0, 4.0, 3.0)
      ..lineTo(6.0, 3.0)
      ..cubicTo(6.552187502384186, 3.0, 7.0, 2.5521875023841862, 7.0, 2.0)
      ..lineTo(8.0, 2.0)
      ..lineTo(8.0, 5.0)
      ..lineTo(6.0, 5.0)
      ..cubicTo(4.895312547683716, 5.0, 4.0, 5.895312547683716, 4.0, 7.0)
      ..close()
      ..moveTo(11.063437461853027, 12.0)
      ..lineTo(9.918437957763672, 12.0)
      ..lineTo(9.063437461853027, 9.398750305175781)
      ..lineTo(8.182812690734863, 12.0)
      ..lineTo(7.063437461853027, 12.0)
      ..lineTo(6.063437461853027, 8.0)
      ..lineTo(7.063437461853027, 8.0)
      ..lineTo(7.6681251525878915, 10.676875114440918)
      ..lineTo(8.524687767028809, 8.0)
      ..lineTo(9.577812194824219, 8.0)
      ..lineTo(10.4165620803833, 10.676875114440918)
      ..lineTo(11.063437461853027, 8.0)
      ..lineTo(12.063437461853027, 8.0)
      ..lineTo(11.063437461853027, 12.0)
      ..close(),
    viewBox: Offset.zero & Size(16.0, 16.0),
  );

  @override
  late final paperclip = PathIconData(
    path: Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(15.069059371948242, 0.8989979624748232)
      ..cubicTo(14.489018619060516, 0.3189898133277894, 13.718345820903778, 0.0,
          12.898663520812988, 0.0)
      ..cubicTo(12.078981220722198, 0.0, 11.308276772499084, 0.3189572095870972,
          10.72826862335205, 0.8989979624748232)
      ..lineTo(4.11280632019043, 7.513547897338867)
      ..cubicTo(3.7020853459835052, 7.924268871545792, 3.4855479625985026,
          8.442818462848663, 3.5007007122039795, 8.975641250610352)
      ..cubicTo(3.5158534618094563, 9.47548645734787, 3.7332383394241333,
          9.959266692399979, 4.111894130706787, 10.338802337646484)
      ..cubicTo(4.488790273666382, 10.715665876865387, 4.9912750124931335,
          10.924155235290527, 5.524977684020996, 10.924155235290527)
      ..cubicTo(6.058680355548859, 10.924155235290527, 6.5611647963523865,
          10.715665876865387, 6.938028335571289, 10.338802337646484)
      ..lineTo(10.486769676208496, 6.790060997009277)
      ..cubicTo(10.791486591100693, 6.485344082117081, 10.791486591100693,
          5.991755723953247, 10.486769676208496, 5.687918663024902)
      ..cubicTo(10.1820527613163, 5.384081602096558, 9.688464403152466,
          5.383201748132706, 9.384627342224121, 5.687918663024902)
      ..lineTo(5.834973335266113, 9.23666000366211)
      ..cubicTo(5.670117944478989, 9.402395233511925, 5.381466448307037,
          9.403275072574615, 5.214851379394531, 9.23666000366211)
      ..cubicTo(5.117743439972401, 9.139552064239979, 5.062509196344763,
          9.030842736363411, 5.058924674987793, 8.931062698364258)
      ..cubicTo(5.056252577342093, 8.828610561788082, 5.108814716339111,
          8.723486423492432, 5.214851379394531, 8.617449760437012)
      ..lineTo(11.830313682556152, 2.0019876956939697)
      ..cubicTo(12.40142571926117, 1.431755542755127, 13.395739197731018,
          1.431755542755127, 13.966851234436035, 2.0019876956939697)
      ..cubicTo(14.555788099765778, 2.590924561023712, 14.555788099765778,
          3.5496212244033813, 13.966851234436035, 4.138525485992432)
      ..lineTo(6.214541912078857, 11.89083480834961)
      ..cubicTo(5.150753736495972, 12.953775763511658, 3.4195600748062134,
          12.954622983932495, 2.3557393550872803, 11.89083480834961)
      ..cubicTo(1.2919186353683474, 10.827046632766724, 1.2919511795043945,
          9.095853686332703, 2.3557393550872803, 8.03203296661377)
      ..lineTo(7.8681464195251465, 2.519625186920166)
      ..cubicTo(8.172863334417343, 2.2149408757686615, 8.172863334417343,
          1.7213197946548462, 7.8681464195251465, 1.4174827337265015)
      ..cubicTo(7.56342950463295, 1.112798422574997, 7.069841146469116,
          1.112798422574997, 6.7660040855407715, 1.4174827337265015)
      ..lineTo(1.2535967826843262, 6.929890155792236)
      ..cubicTo(-0.4178655147552491, 8.601352453231812, -0.4178655147552491,
          11.322362661361694, 1.2535967826843262, 12.99382495880127)
      ..cubicTo(2.0893442630767822, 13.829572439193726, 3.1879024505615234,
          14.247397422790527, 4.285580635070801, 14.247397422790527)
      ..cubicTo(5.3841712474823, 14.247397422790527, 6.481816530227661,
          13.829539835453033, 7.317564010620117, 12.99382495880127)
      ..lineTo(15.069873809814453, 5.241515159606934)
      ..cubicTo(16.266419649124146, 4.043144464492798, 16.26648497581482,
          2.096456229686737, 15.069059371948242, 0.8989979624748232)
      ..close(),
    viewBox: Offset.zero & Size(16.0, 16.0),
  );

  @override
  late final pageTree = PathIconData(
    path: Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(2.0125787258148193, 9.0)
      ..lineTo(5.974842548370361, 9.0)
      ..cubicTo(5.974842548370361, 9.550000011920929, 6.427672922611237, 10.0,
          6.9811320304870605, 10.0)
      ..lineTo(8.9937105178833, 10.0)
      ..cubicTo(9.55345892906189, 10.0, 10.0, 9.550000011920929, 10.0, 9.0)
      ..lineTo(10.0, 7.0)
      ..cubicTo(
          10.0, 6.443750023841858, 9.547169625759125, 6.0, 8.9937105178833, 6.0)
      ..lineTo(6.9811320304870605, 6.0)
      ..cubicTo(6.421383619308472, 6.0, 5.974842548370361, 6.449999988079071,
          5.974842548370361, 7.0)
      ..lineTo(5.974842548370361, 8.0)
      ..lineTo(2.0125787258148193, 8.0)
      ..lineTo(2.0125787258148193, 4.0)
      ..lineTo(3.0188679695129395, 4.0)
      ..cubicTo(3.5786163806915283, 4.0, 4.025157451629639, 3.550000011920929,
          4.025157451629639, 3.0)
      ..lineTo(4.025157451629639, 1.0)
      ..cubicTo(4.025157451629639, 0.44375002384185797, 3.5723270773887634, 0.0,
          3.0188679695129395, 0.0)
      ..lineTo(1.0062893629074097, 0.0)
      ..cubicTo(0.44654095172882086, 0.0, 0.0, 0.44999998807907116, 0.0, 1.0)
      ..lineTo(0.0, 3.0)
      ..cubicTo(0.0, 3.550000011920929, 0.4528302550315857, 4.0,
          1.0062893629074097, 4.0)
      ..lineTo(1.0062893629074097, 15.0)
      ..lineTo(5.974842548370361, 15.0)
      ..cubicTo(5.974842548370361, 15.550000011920929, 6.427672922611237, 16.0,
          6.9811320304870605, 16.0)
      ..lineTo(8.9937105178833, 16.0)
      ..cubicTo(9.55345892906189, 16.0, 10.0, 15.550000011920929, 10.0, 15.0)
      ..lineTo(10.0, 13.0)
      ..cubicTo(10.0, 12.443750023841858, 9.547169625759125, 12.0,
          8.9937105178833, 12.0)
      ..lineTo(6.9811320304870605, 12.0)
      ..cubicTo(6.421383619308472, 12.0, 5.974842548370361, 12.449999988079071,
          5.974842548370361, 13.0)
      ..lineTo(5.974842548370361, 14.0)
      ..lineTo(2.0125787258148193, 14.0)
      ..lineTo(2.0125787258148193, 9.0)
      ..close(),
    viewBox: Offset.zero & Size(16.0, 16.0),
  );

  @override
  late final phone = PathIconData(
    path: Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(15.03516674041748, 11.18438720703125)
      ..lineTo(15.12208080291748, 11.34375)
      ..cubicTo(15.33790111541748, 11.7562255859375, 15.98145580291748,
          12.97186279296875, 15.14161205291748, 14.05938720703125)
      ..cubicTo(14.78223705291748, 14.54376220703125, 14.00977611541748,
          15.43438720703125, 13.00391674041748, 15.84686279296875)
      ..lineTo(12.79395580291748, 15.92498779296875)
      ..lineTo(12.70704174041748, 15.9281005859375)
      ..cubicTo(12.47852611541748, 15.96875, 12.20704174041748,
          15.9781494140625, 12.00684642791748, 15.9781494140625)
      ..cubicTo(11.22852611541748, 15.9781494140625, 7.178720951080322,
          15.79376220703125, 3.6914165019989014, 12.14373779296875)
      ..cubicTo(0.009775876998901372, 8.296875, -0.2744039446115494,
          3.38751220703125, 0.14747105538845065, 2.42498779296875)
      ..cubicTo(0.6005960553884506, 1.4468994140625, 1.5283304452896118,
          0.70623779296875, 2.0380961894989014, 0.35626220703125006)
      ..cubicTo(2.2470805644989014, 0.22186279296875, 2.4472758769989014,
          0.13439941406250003, 2.6630961894989014, 0.0718994140625)
      ..cubicTo(2.8564555644989014, 0.021850585937500007, 3.0254008769989014,
          0.0, 3.1943461894989014, 0.0)
      ..cubicTo(3.8701274394989014, 0.0, 4.424814701080322, 0.3287353515625,
          4.727549076080322, 0.5079956054687501)
      ..lineTo(4.735361576080322, 0.5125122070312498)
      ..lineTo(4.894541263580322, 0.6093750000000001)
      ..cubicTo(5.991220951080322, 1.28436279296875, 6.422861576080322,
          4.6937255859375, 6.422861576080322, 4.7249755859375)
      ..cubicTo(6.391611576080322, 5.4437255859375, 5.910166263580322,
          5.9781494140625, 5.222666263580322, 6.65313720703125)
      ..cubicTo(5.613291263580322, 7.4000244140625, 6.337900638580322,
          8.35626220703125, 6.860361576080322, 8.890625)
      ..cubicTo(7.369150638580322, 9.4124755859375, 8.21973705291748,
          10.12811279296875, 9.00684642791748, 10.5875244140625)
      ..cubicTo(9.61622142791748, 10.0218505859375, 10.05665111541748,
          9.65313720703125, 10.58497142791748, 9.53125)
      ..lineTo(10.92286205291748, 9.484375)
      ..lineTo(10.99708080291748, 9.48748779296875)
      ..cubicTo(11.02833080291748, 9.48748779296875, 14.41602611541748, 10.0625,
          15.03516674041748, 11.18438720703125)
      ..close()
      ..moveTo(12.36915111541748, 14.14691162109375)
      ..cubicTo(12.84766674041748, 13.9375, 13.37208080291748,
          13.39691162109375, 13.70020580291748, 12.95941162109375)
      ..cubicTo(13.79688549041748, 12.83123779296875, 13.74708080291748,
          12.62188720703125, 13.52833080291748, 12.20941162109375)
      ..lineTo(13.49415111541748, 12.14691162109375)
      ..cubicTo(13.08497142791748, 11.88128662109375, 11.51954174041748,
          11.41876220703125, 10.96876049041748, 11.3125)
      ..cubicTo(10.80176830291748, 11.3990478515625, 10.37012767791748,
          11.8016357421875, 10.05665111541748, 12.09356689453125)
      ..lineTo(10.01270580291748, 12.1343994140625)
      ..cubicTo(9.61329174041748, 12.51873779296875, 8.98829174041748,
          12.62188720703125, 8.47852611541748, 12.3687744140625)
      ..cubicTo(7.421885013580322, 11.83123779296875, 6.256845951080322, 10.875,
          5.566416263580322, 10.16253662109375)
      ..cubicTo(4.863291263580322, 9.44378662109375, 3.8720805644989014,
          8.1187744140625, 3.4287211894989014, 7.09063720703125)
      ..cubicTo(3.2226665019989014, 6.5875244140625, 3.3349711894989014,
          6.01251220703125, 3.7070415019989014, 5.61248779296875)
      ..lineTo(3.7382915019989014, 5.578125)
      ..lineTo(3.7900493144989014, 5.527099609375)
      ..cubicTo(4.062510013580322, 5.25860595703125, 4.492197513580322,
          4.83447265625, 4.603525638580322, 4.64691162109375)
      ..cubicTo(4.519541263580322, 4.09686279296875, 4.128916263580322, 2.53125,
          3.8750102519989014, 2.109375)
      ..lineTo(3.8007915019989014, 2.0625)
      ..cubicTo(3.6318461894989014, 1.9625244140625, 3.3164165019989014,
          1.7750244140625, 3.1445415019989014, 1.81878662109375)
      ..cubicTo(3.0976665019989014, 1.83441162109375, 3.0537211894989014,
          1.859375, 3.0380961894989014, 1.8687744140625002)
      ..cubicTo(2.4912211894989014, 2.24688720703125, 2.0351665019989014,
          2.71563720703125, 1.8281351327896118, 3.11248779296875)
      ..cubicTo(1.7382913827896118, 3.70623779296875, 1.8750100135803225,
          7.62188720703125, 5.003916263580322, 10.890625)
      ..cubicTo(7.981455326080322, 14.00628662109375, 11.35938549041748,
          14.1656494140625, 12.00684642791748, 14.1656494140625)
      ..cubicTo(12.20020580291748, 14.1656494140625, 12.32227611541748,
          14.15313720703125, 12.36915111541748, 14.14691162109375)
      ..close(),
    viewBox: Offset.zero & Size(16.0, 16.0),
  );
}
