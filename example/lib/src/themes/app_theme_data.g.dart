// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/widgets.dart';
import 'package:path_icon/path_icon.dart';
import 'package:equatable/equatable.dart';

class AppThemeData extends Equatable {
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

  static final AppThemeData fallback = AppThemeData(
    sizes: AppThemeSizesData.fallback,
    breakpoints: AppThemeBreakpointsData.fallback,
    spacing: AppThemeSpacingData.fallback,
    borders: AppThemeBordersData.fallback,
    radius: AppThemeRadiusData.fallback,
    radii: AppThemeRadiiData.fallback,
    motion: AppThemeMotionData.fallback,
    gradient: AppThemeGradientData.fallback,
    color: AppThemeColorData.fallback,
    grid: AppThemeGridData.fallback,
    font: AppThemeFontData.fallback,
    effect: AppThemeEffectData.fallback,
    typography: AppThemeTypographyData.fallback,
    icons: AppThemeIconsData.fallback,
  );

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

  Map<String, Object?> reflect() => {
        'sizes': sizes,
        'breakpoints': breakpoints,
        'spacing': spacing,
        'borders': borders,
        'radius': radius,
        'radii': radii,
        'motion': motion,
        'gradient': gradient,
        'color': color,
        'grid': grid,
        'font': font,
        'effect': effect,
        'typography': typography,
        'icons': icons,
      };
  @override
  List<Object?> get props => [
        sizes,
        breakpoints,
        spacing,
        borders,
        radius,
        radii,
        motion,
        gradient,
        color,
        grid,
        font,
        effect,
        typography,
        icons,
      ];
}

class AppThemeSizesData extends Equatable {
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

  static final AppThemeSizesData fallback = AppThemeSizesData(
    v32: 32.72,
    v40: 40.0,
    v60: 60.0,
    v80: 80.0,
    plainToken: 200.0,
    tokenInFrame: 200.0,
    tokenInGroup: 200.0,
    inVariant60: 60.0,
    inVariant90: 90.0,
    inVariant120: 120.0,
    frame: 32.0,
    rect: 32.0,
    shapeInComponent: 32.0,
  );

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

  Map<String, double> reflect() => {
        'v32': v32,
        'v40': v40,
        'v60': v60,
        'v80': v80,
        'plainToken': plainToken,
        'tokenInFrame': tokenInFrame,
        'tokenInGroup': tokenInGroup,
        'inVariant60': inVariant60,
        'inVariant90': inVariant90,
        'inVariant120': inVariant120,
        'frame': frame,
        'rect': rect,
        'shapeInComponent': shapeInComponent,
      };
  @override
  List<Object?> get props => [
        v32,
        v40,
        v60,
        v80,
        plainToken,
        tokenInFrame,
        tokenInGroup,
        inVariant60,
        inVariant90,
        inVariant120,
        frame,
        rect,
        shapeInComponent,
      ];
}

class AppThemeBreakpointsData extends Equatable {
  const AppThemeBreakpointsData(
      {required this.lg, required this.sm, required this.md});

  static final AppThemeBreakpointsData fallback = AppThemeBreakpointsData(
    lg: 1280.0,
    sm: 768.0,
    md: 1024.0,
  );

  final double lg;

  final double sm;

  final double md;

  Map<String, double> reflect() => {
        'lg': lg,
        'sm': sm,
        'md': md,
      };
  @override
  List<Object?> get props => [
        lg,
        sm,
        md,
      ];
}

class AppThemeSpacingData extends Equatable {
  const AppThemeSpacingData(
      {required this.v10, required this.mixed, required this.top});

  static final AppThemeSpacingData fallback = AppThemeSpacingData(
    v10: const EdgeInsets.all(10.0),
    mixed: const EdgeInsets.only(
      top: 10.0,
      left: 20.0,
      right: 20.0,
      bottom: 30.0,
    ),
    top: const EdgeInsets.only(
      top: 10.0,
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
    ),
  );

  final EdgeInsets v10;

  final EdgeInsets mixed;

  final EdgeInsets top;

  Map<String, EdgeInsets> reflect() => {
        'v10': v10,
        'mixed': mixed,
        'top': top,
      };
  @override
  List<Object?> get props => [
        v10,
        mixed,
        top,
      ];
}

class AppThemeBordersData extends Equatable {
  const AppThemeBordersData({required this.unsupported});

  static final AppThemeBordersData fallback = AppThemeBordersData(
    unsupported: AppThemeBordersUnsupportedData.fallback,
  );

  final AppThemeBordersUnsupportedData unsupported;

  Map<String, AppThemeBordersUnsupportedData> reflect() => {
        'unsupported': unsupported,
      };
  @override
  List<Object?> get props => [
        unsupported,
      ];
}

class AppThemeBordersUnsupportedData extends Equatable {
  const AppThemeBordersUnsupportedData();

  static final AppThemeBordersUnsupportedData fallback =
      AppThemeBordersUnsupportedData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeRadiusData extends Equatable {
  const AppThemeRadiusData({required this.v5});

  static final AppThemeRadiusData fallback = AppThemeRadiusData(
    v5: const BorderRadius.only(
      topLeft: Radius.circular(5.0),
      topRight: Radius.circular(5.0),
      bottomLeft: Radius.circular(5.0),
      bottomRight: Radius.circular(5.0),
    ),
  );

  final BorderRadius v5;

  Map<String, BorderRadius> reflect() => {
        'v5': v5,
      };
  @override
  List<Object?> get props => [
        v5,
      ];
}

class AppThemeRadiiData extends Equatable {
  const AppThemeRadiiData({required this.smoothing, required this.mixed});

  static final AppThemeRadiiData fallback = AppThemeRadiiData(
    smoothing: const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
      bottomLeft: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
    mixed: const BorderRadius.only(
      topLeft: Radius.circular(5.5),
      topRight: Radius.circular(10.0),
      bottomLeft: Radius.circular(20.0),
      bottomRight: Radius.circular(15.0),
    ),
  );

  final BorderRadius smoothing;

  final BorderRadius mixed;

  Map<String, BorderRadius> reflect() => {
        'smoothing': smoothing,
        'mixed': mixed,
      };
  @override
  List<Object?> get props => [
        smoothing,
        mixed,
      ];
}

class AppThemeMotionData extends Equatable {
  const AppThemeMotionData();

  static final AppThemeMotionData fallback = AppThemeMotionData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeGradientData extends Equatable {
  const AppThemeGradientData({required this.gradient});

  static final AppThemeGradientData fallback = AppThemeGradientData(
    gradient: AppThemeGradientGradientData.fallback,
  );

  final AppThemeGradientGradientData gradient;

  Map<String, AppThemeGradientGradientData> reflect() => {
        'gradient': gradient,
      };
  @override
  List<Object?> get props => [
        gradient,
      ];
}

class AppThemeGradientGradientData extends Equatable {
  const AppThemeGradientGradientData({required this.multiplegrad});

  static final AppThemeGradientGradientData fallback =
      AppThemeGradientGradientData(
    multiplegrad: AppThemeGradientGradientMultiplegradData.fallback,
  );

  final AppThemeGradientGradientMultiplegradData multiplegrad;

  Map<String, AppThemeGradientGradientMultiplegradData> reflect() => {
        'multiplegrad': multiplegrad,
      };
  @override
  List<Object?> get props => [
        multiplegrad,
      ];
}

class AppThemeGradientGradientMultiplegradData extends Equatable {
  const AppThemeGradientGradientMultiplegradData();

  static final AppThemeGradientGradientMultiplegradData fallback =
      AppThemeGradientGradientMultiplegradData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeColorData extends Equatable {
  const AppThemeColorData(
      {required this.colors,
      required this.invalid,
      required this.light,
      required this.dark});

  static final AppThemeColorData fallback = AppThemeColorData(
    colors: AppThemeColorColorsData.fallback,
    invalid: AppThemeColorInvalidData.fallback,
    light: AppThemeColorLightData.fallback,
    dark: AppThemeColorDarkData.fallback,
  );

  final AppThemeColorColorsData colors;

  final AppThemeColorInvalidData invalid;

  final AppThemeColorLightData light;

  final AppThemeColorDarkData dark;

  Map<String, Object?> reflect() => {
        'colors': colors,
        'invalid': invalid,
        'light': light,
        'dark': dark,
      };
  @override
  List<Object?> get props => [
        colors,
        invalid,
        light,
        dark,
      ];
}

class AppThemeColorColorsData extends Equatable {
  const AppThemeColorColorsData(
      {required this.singleBlue,
      required this.refBlue,
      required this.multipleFills,
      required this.specialCharacters});

  static final AppThemeColorColorsData fallback = AppThemeColorColorsData(
    singleBlue: const Color(0xff044aff),
    refBlue: const Color(0x0),
    multipleFills: AppThemeColorColorsMultipleFillsData.fallback,
    specialCharacters: AppThemeColorColorsSpecialCharactersData.fallback,
  );

  final Color singleBlue;

  final Color refBlue;

  final AppThemeColorColorsMultipleFillsData multipleFills;

  final AppThemeColorColorsSpecialCharactersData specialCharacters;

  Map<String, Object?> reflect() => {
        'singleBlue': singleBlue,
        'refBlue': refBlue,
        'multipleFills': multipleFills,
        'specialCharacters': specialCharacters,
      };
  @override
  List<Object?> get props => [
        singleBlue,
        refBlue,
        multipleFills,
        specialCharacters,
      ];
}

class AppThemeColorColorsMultipleFillsData extends Equatable {
  const AppThemeColorColorsMultipleFillsData(
      {required this.v0, required this.v1});

  static final AppThemeColorColorsMultipleFillsData fallback =
      AppThemeColorColorsMultipleFillsData(
    v0: const Color(0xff40ffba),
    v1: const Color(0x1a000000),
  );

  final Color v0;

  final Color v1;

  Map<String, Color> reflect() => {
        'v0': v0,
        'v1': v1,
      };
  @override
  List<Object?> get props => [
        v0,
        v1,
      ];
}

class AppThemeColorColorsSpecialCharactersData extends Equatable {
  const AppThemeColorColorsSpecialCharactersData(
      {required this.c55357c56837, required this.c228nderung});

  static final AppThemeColorColorsSpecialCharactersData fallback =
      AppThemeColorColorsSpecialCharactersData(
    c55357c56837: const Color(0xff40df50),
    c228nderung: const Color(0xff3456af),
  );

  final Color c55357c56837;

  final Color c228nderung;

  Map<String, Color> reflect() => {
        'c55357c56837': c55357c56837,
        'c228nderung': c228nderung,
      };
  @override
  List<Object?> get props => [
        c55357c56837,
        c228nderung,
      ];
}

class AppThemeColorInvalidData extends Equatable {
  const AppThemeColorInvalidData({required this.empty});

  static final AppThemeColorInvalidData fallback = AppThemeColorInvalidData(
    empty: const Color(0x0),
  );

  final Color empty;

  Map<String, Color> reflect() => {
        'empty': empty,
      };
  @override
  List<Object?> get props => [
        empty,
      ];
}

class AppThemeColorLightData extends Equatable {
  const AppThemeColorLightData({required this.background});

  static final AppThemeColorLightData fallback = AppThemeColorLightData(
    background: const Color(0xffffffff),
  );

  final Color background;

  Map<String, Color> reflect() => {
        'background': background,
      };
  @override
  List<Object?> get props => [
        background,
      ];
}

class AppThemeColorDarkData extends Equatable {
  const AppThemeColorDarkData({required this.background});

  static final AppThemeColorDarkData fallback = AppThemeColorDarkData(
    background: const Color(0xff000000),
  );

  final Color background;

  Map<String, Color> reflect() => {
        'background': background,
      };
  @override
  List<Object?> get props => [
        background,
      ];
}

class AppThemeGridData extends Equatable {
  const AppThemeGridData({required this.multiple});

  static final AppThemeGridData fallback = AppThemeGridData(
    multiple: AppThemeGridMultipleData.fallback,
  );

  final AppThemeGridMultipleData multiple;

  Map<String, AppThemeGridMultipleData> reflect() => {
        'multiple': multiple,
      };
  @override
  List<Object?> get props => [
        multiple,
      ];
}

class AppThemeGridMultipleData extends Equatable {
  const AppThemeGridMultipleData();

  static final AppThemeGridMultipleData fallback = AppThemeGridMultipleData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeFontData extends Equatable {
  const AppThemeFontData({required this.body});

  static final AppThemeFontData fallback = AppThemeFontData(
    body: AppThemeFontBodyData.fallback,
  );

  final AppThemeFontBodyData body;

  Map<String, AppThemeFontBodyData> reflect() => {
        'body': body,
      };
  @override
  List<Object?> get props => [
        body,
      ];
}

class AppThemeFontBodyData extends Equatable {
  const AppThemeFontBodyData(
      {required this.h3,
      required this.h4StrikeThrough,
      required this.italic,
      required this.extraBoldCondensedItalic,
      required this.mediumExtendedItalic,
      required this.super$});

  static final AppThemeFontBodyData fallback = AppThemeFontBodyData(
    h3: const TextStyle(
      fontFamily: 'Akzidenz-Grotesk Pro',
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.4,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
    ),
    h4StrikeThrough: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      decoration: TextDecoration.lineThrough,
      fontStyle: FontStyle.italic,
    ),
    italic: const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.italic,
    ),
    extraBoldCondensedItalic: const TextStyle(
      fontFamily: 'Akzidenz-Grotesk Pro',
      fontSize: 12.0,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.0,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.italic,
    ),
    mediumExtendedItalic: const TextStyle(
      fontFamily: 'Akzidenz-Grotesk Pro',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.italic,
    ),
    super$: const TextStyle(
      fontFamily: 'Akzidenz-Grotesk Pro',
      fontSize: 22.0,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.0,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
    ),
  );

  final TextStyle h3;

  final TextStyle h4StrikeThrough;

  final TextStyle italic;

  final TextStyle extraBoldCondensedItalic;

  final TextStyle mediumExtendedItalic;

  final TextStyle super$;

  Map<String, TextStyle> reflect() => {
        'h3': h3,
        'h4StrikeThrough': h4StrikeThrough,
        'italic': italic,
        'extraBoldCondensedItalic': extraBoldCondensedItalic,
        'mediumExtendedItalic': mediumExtendedItalic,
        'super\$': super$,
      };
  @override
  List<Object?> get props => [
        h3,
        h4StrikeThrough,
        italic,
        extraBoldCondensedItalic,
        mediumExtendedItalic,
        super$,
      ];
}

class AppThemeEffectData extends Equatable {
  const AppThemeEffectData({required this.innerShadowMultiple});

  static final AppThemeEffectData fallback = AppThemeEffectData(
    innerShadowMultiple: AppThemeEffectInnerShadowMultipleData.fallback,
  );

  final AppThemeEffectInnerShadowMultipleData innerShadowMultiple;

  Map<String, AppThemeEffectInnerShadowMultipleData> reflect() => {
        'innerShadowMultiple': innerShadowMultiple,
      };
  @override
  List<Object?> get props => [
        innerShadowMultiple,
      ];
}

class AppThemeEffectInnerShadowMultipleData extends Equatable {
  const AppThemeEffectInnerShadowMultipleData();

  static final AppThemeEffectInnerShadowMultipleData fallback =
      AppThemeEffectInnerShadowMultipleData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeEffectLayerBlurData extends Equatable {
  const AppThemeEffectLayerBlurData();

  static final AppThemeEffectLayerBlurData fallback =
      AppThemeEffectLayerBlurData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeEffectBackgroundBlurData extends Equatable {
  const AppThemeEffectBackgroundBlurData();

  static final AppThemeEffectBackgroundBlurData fallback =
      AppThemeEffectBackgroundBlurData();

  Map<String, Object?> reflect() => {};
  @override
  List<Object?> get props => [];
}

class AppThemeTypographyData extends Equatable {
  const AppThemeTypographyData({required this.body});

  static final AppThemeTypographyData fallback = AppThemeTypographyData(
    body: AppThemeTypographyBodyData.fallback,
  );

  final AppThemeTypographyBodyData body;

  Map<String, AppThemeTypographyBodyData> reflect() => {
        'body': body,
      };
  @override
  List<Object?> get props => [
        body,
      ];
}

class AppThemeTypographyBodyData extends Equatable {
  const AppThemeTypographyBodyData(
      {required this.h3,
      required this.h4StrikeThrough,
      required this.italic,
      required this.extraBoldCondensedItalic,
      required this.mediumExtendedItalic,
      required this.super$});

  static final AppThemeTypographyBodyData fallback = AppThemeTypographyBodyData(
    h3: AppThemeTypographyBodyH3Data.fallback,
    h4StrikeThrough: AppThemeTypographyBodyH4StrikeThroughData.fallback,
    italic: AppThemeTypographyBodyItalicData.fallback,
    extraBoldCondensedItalic:
        AppThemeTypographyBodyExtraBoldCondensedItalicData.fallback,
    mediumExtendedItalic:
        AppThemeTypographyBodyMediumExtendedItalicData.fallback,
    super$: AppThemeTypographyBodySuperData.fallback,
  );

  final AppThemeTypographyBodyH3Data h3;

  final AppThemeTypographyBodyH4StrikeThroughData h4StrikeThrough;

  final AppThemeTypographyBodyItalicData italic;

  final AppThemeTypographyBodyExtraBoldCondensedItalicData
      extraBoldCondensedItalic;

  final AppThemeTypographyBodyMediumExtendedItalicData mediumExtendedItalic;

  final AppThemeTypographyBodySuperData super$;

  Map<String, Object?> reflect() => {
        'h3': h3,
        'h4StrikeThrough': h4StrikeThrough,
        'italic': italic,
        'extraBoldCondensedItalic': extraBoldCondensedItalic,
        'mediumExtendedItalic': mediumExtendedItalic,
        'super\$': super$,
      };
  @override
  List<Object?> get props => [
        h3,
        h4StrikeThrough,
        italic,
        extraBoldCondensedItalic,
        mediumExtendedItalic,
        super$,
      ];
}

class AppThemeTypographyBodyH3Data extends Equatable {
  const AppThemeTypographyBodyH3Data(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodyH3Data fallback =
      AppThemeTypographyBodyH3Data(
    fontSize: 20.0,
    letterSpacing: 0.4,
    lineHeight: 32.0,
    paragraphIndent: 5.0,
    paragraphSpacing: 8.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeTypographyBodyH4StrikeThroughData extends Equatable {
  const AppThemeTypographyBodyH4StrikeThroughData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodyH4StrikeThroughData fallback =
      AppThemeTypographyBodyH4StrikeThroughData(
    fontSize: 16.0,
    letterSpacing: 0.0,
    lineHeight: 19.2,
    paragraphIndent: 0.0,
    paragraphSpacing: 0.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeTypographyBodyItalicData extends Equatable {
  const AppThemeTypographyBodyItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodyItalicData fallback =
      AppThemeTypographyBodyItalicData(
    fontSize: 12.0,
    letterSpacing: 0.0,
    lineHeight: 14.0,
    paragraphIndent: 0.0,
    paragraphSpacing: 0.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeTypographyBodyExtraBoldCondensedItalicData extends Equatable {
  const AppThemeTypographyBodyExtraBoldCondensedItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodyExtraBoldCondensedItalicData fallback =
      AppThemeTypographyBodyExtraBoldCondensedItalicData(
    fontSize: 12.0,
    letterSpacing: 0.0,
    lineHeight: 14.4,
    paragraphIndent: 0.0,
    paragraphSpacing: 0.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeTypographyBodyMediumExtendedItalicData extends Equatable {
  const AppThemeTypographyBodyMediumExtendedItalicData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodyMediumExtendedItalicData fallback =
      AppThemeTypographyBodyMediumExtendedItalicData(
    fontSize: 20.0,
    letterSpacing: 0.0,
    lineHeight: 24.0,
    paragraphIndent: 0.0,
    paragraphSpacing: 0.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeTypographyBodySuperData extends Equatable {
  const AppThemeTypographyBodySuperData(
      {required this.fontSize,
      required this.letterSpacing,
      required this.lineHeight,
      required this.paragraphIndent,
      required this.paragraphSpacing});

  static final AppThemeTypographyBodySuperData fallback =
      AppThemeTypographyBodySuperData(
    fontSize: 22.0,
    letterSpacing: 0.0,
    lineHeight: 26.4,
    paragraphIndent: 0.0,
    paragraphSpacing: 0.0,
  );

  final double fontSize;

  final double letterSpacing;

  final double lineHeight;

  final double paragraphIndent;

  final double paragraphSpacing;

  Map<String, double> reflect() => {
        'fontSize': fontSize,
        'letterSpacing': letterSpacing,
        'lineHeight': lineHeight,
        'paragraphIndent': paragraphIndent,
        'paragraphSpacing': paragraphSpacing,
      };
  @override
  List<Object?> get props => [
        fontSize,
        letterSpacing,
        lineHeight,
        paragraphIndent,
        paragraphSpacing,
      ];
}

class AppThemeIconsData extends Equatable {
  const AppThemeIconsData(
      {required this.propagation,
      required this.productMenuClosed,
      required this.pasteWord,
      required this.paperclip,
      required this.pageTree,
      required this.phone});

  static final AppThemeIconsData fallback = AppThemeIconsData(
    propagation: PathIconData(
      path: Path.combine(
        PathOperation.union,
        Path.combine(
          PathOperation.union,
          Path.combine(
            PathOperation.union,
            Path()
              ..fillType = PathFillType.nonZero
              ..moveTo(11.5, 3.5)
              ..cubicTo(11.5, 5.43299674987793, 9.93299674987793, 7.0, 8.0, 7.0)
              ..cubicTo(6.06700325012207, 7.0, 4.5, 5.43299674987793, 4.5, 3.5)
              ..cubicTo(
                  4.5, 1.5670033693313599, 6.06700325012207, 0.0, 8.0, 0.0)
              ..cubicTo(
                  9.93299674987793, 0.0, 11.5, 1.5670033693313599, 11.5, 3.5)
              ..close(),
            Path()
              ..fillType = PathFillType.nonZero
              ..moveTo(1.0, 10.299994468688965)
              ..lineTo(4.143750190734863, 7.159369468688965)
              ..cubicTo(4.596875190734863, 6.712494373321533, 5.3125,
                  7.331244468688965, 4.849999904632568, 7.86561918258667)
              ..lineTo(1.7156250476837158, 10.999994277954102)
              ..lineTo(2.075000047683716, 10.999994277954102)
              ..cubicTo(
                  2.7218751907348633,
                  11.006244659423828,
                  2.7531251907348633,
                  11.974994659423828,
                  2.075000047683716,
                  11.999994277954102)
              ..lineTo(0.5, 11.999994277954102)
              ..cubicTo(0.22499999403953552, 11.999994277954102, 0.0,
                  11.774993896484375, 0.0, 11.499994277954102)
              ..lineTo(0.0, 9.924994468688965)
              ..cubicTo(0.015625, 9.262495040893555, 1.0, 9.265619277954102,
                  1.0, 9.924994468688965)
              ..lineTo(1.0, 10.299994468688965)
              ..close(),
          ),
          Path()
            ..fillType = PathFillType.nonZero
            ..moveTo(14.999682426452637, 10.299994468688965)
            ..lineTo(11.855941772460938, 7.159369468688965)
            ..cubicTo(11.402817726135254, 6.712494373321533, 10.68719482421875,
                7.331244468688965, 11.149693489074707, 7.86561918258667)
            ..lineTo(14.284059524536133, 10.999994277954102)
            ..lineTo(13.92468547821045, 10.999994277954102)
            ..cubicTo(
                13.277812957763672,
                11.006244659423828,
                13.246562957763672,
                11.974994659423828,
                13.92468547821045,
                11.999994277954102)
            ..lineTo(15.499680519104004, 11.999994277954102)
            ..cubicTo(
                15.774680137634277,
                11.999994277954102,
                15.999679565429688,
                11.774993896484375,
                15.999679565429688,
                11.499994277954102)
            ..lineTo(15.999679565429688, 9.924994468688965)
            ..cubicTo(15.984054565429688, 9.262494087219238, 14.999682426452637,
                9.265619277954102, 14.999682426452637, 9.924994468688965)
            ..lineTo(14.999682426452637, 10.299994468688965)
            ..close(),
        ),
        Path()
          ..fillType = PathFillType.nonZero
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
      ),
      viewBox: Offset.zero & Size(15.999679565429688, 15.998395919799805),
    ),
    productMenuClosed: PathIconData(
      path: Path.combine(
        PathOperation.union,
        Path()
          ..fillType = PathFillType.nonZero
          ..moveTo(0.0, 0.96875)
          ..cubicTo(0.0, 0.43438720703125, 0.4345703125, 0.0, 0.96875, 0.0)
          ..cubicTo(
              1.505859375, 0.0, 1.9404296875, 0.43438720703125, 1.9375, 0.96875)
          ..lineTo(1.9375, 15.03125)
          ..cubicTo(
              1.9375, 15.56561279296875, 1.5029296875, 16.0, 0.96875, 16.0)
          ..cubicTo(0.4345703125, 16.0, 0.0, 15.56561279296875, 0.0, 15.03125)
          ..lineTo(0.0, 0.96875)
          ..close(),
        Path()
          ..fillType = PathFillType.evenOdd
          ..moveTo(14.5, 16.0)
          ..lineTo(4.5, 16.0)
          ..cubicTo(3.671875, 16.0, 3.0, 15.328125, 3.0, 14.5)
          ..lineTo(3.0, 1.5)
          ..cubicTo(3.0, 0.67498779296875, 3.671875, 0.0, 4.5, 0.0)
          ..lineTo(14.5, 0.0)
          ..cubicTo(15.328125, 0.0, 16.0, 0.671875, 16.0, 1.5)
          ..lineTo(16.0, 14.5)
          ..cubicTo(16.0, 15.32501220703125, 15.3251953125, 16.0, 14.5, 16.0)
          ..close()
          ..moveTo(5.0, 14.0)
          ..lineTo(14.0, 14.0)
          ..lineTo(14.0, 2.0)
          ..lineTo(5.0, 2.0)
          ..lineTo(5.0, 14.0)
          ..close(),
      ),
      viewBox: Offset.zero & Size(16.0, 16.0),
    ),
    pasteWord: PathIconData(
      path: Path()
        ..fillType = PathFillType.nonZero
        ..moveTo(13.0, 6.0)
        ..lineTo(11.0, 6.0)
        ..lineTo(11.0, 2.8709375858306885)
        ..cubicTo(11.0, 1.8375000953674316, 10.162500143051147, 1.0,
            9.12906265258789, 1.0)
        ..lineTo(2.8709375858306885, 1.0)
        ..cubicTo(1.8375000953674316, 1.0, 1.0, 1.8375000953674316, 1.0,
            2.8709375858306885)
        ..lineTo(1.0, 11.129375457763672)
        ..cubicTo(1.0, 12.162500500679016, 1.8375000953674316, 13.0,
            2.8709375858306885, 13.0)
        ..lineTo(5.0, 13.0)
        ..lineTo(5.0, 14.0)
        ..cubicTo(5.0, 15.104687452316284, 5.895312547683716, 16.0, 7.0, 16.0)
        ..lineTo(13.0, 16.0)
        ..cubicTo(
            14.104687452316284, 16.0, 15.0, 15.104687452316284, 15.0, 14.0)
        ..lineTo(15.0, 8.0)
        ..cubicTo(15.0, 6.895312547683716, 14.104687452316284, 6.0, 13.0, 6.0)
        ..close()
        ..moveTo(5.0, 8.0)
        ..lineTo(5.0, 11.0)
        ..lineTo(3.0, 11.0)
        ..lineTo(3.0, 3.0)
        ..lineTo(4.0, 3.0)
        ..cubicTo(4.0, 3.552187502384186, 4.447812497615814, 4.0, 5.0, 4.0)
        ..lineTo(7.0, 4.0)
        ..cubicTo(7.552187502384186, 4.0, 8.0, 3.552187502384186, 8.0, 3.0)
        ..lineTo(9.0, 3.0)
        ..lineTo(9.0, 6.0)
        ..lineTo(7.0, 6.0)
        ..cubicTo(5.895312547683716, 6.0, 5.0, 6.895312547683716, 5.0, 8.0)
        ..close()
        ..moveTo(12.063437461853027, 13.0)
        ..lineTo(10.918437957763672, 13.0)
        ..lineTo(10.063437461853027, 10.398750305175781)
        ..lineTo(9.182812690734863, 13.0)
        ..lineTo(8.063437461853027, 13.0)
        ..lineTo(7.063437461853027, 9.0)
        ..lineTo(8.063437461853027, 9.0)
        ..lineTo(8.66812515258789, 11.676875114440918)
        ..lineTo(9.524687767028809, 9.0)
        ..lineTo(10.577812194824219, 9.0)
        ..lineTo(11.4165620803833, 11.676875114440918)
        ..lineTo(12.063437461853027, 9.0)
        ..lineTo(13.063437461853027, 9.0)
        ..lineTo(12.063437461853027, 13.0)
        ..close(),
      viewBox: Offset.zero & Size(16.0, 16.0),
    ),
    paperclip: PathIconData(
      path: Path()
        ..fillType = PathFillType.nonZero
        ..moveTo(15.070035994052887, 1.912181556224823)
        ..cubicTo(14.489995241165161, 1.3321734070777893, 13.719322443008423,
            1.01318359375, 12.899640142917633, 1.01318359375)
        ..cubicTo(12.079957842826843, 1.01318359375, 11.30925339460373,
            1.3321408033370972, 10.729245245456696, 1.912181556224823)
        ..lineTo(4.1137829422950745, 8.526731491088867)
        ..cubicTo(3.70306196808815, 8.937452465295792, 3.4865245847031474,
            9.456002056598663, 3.5016773343086243, 9.988824844360352)
        ..cubicTo(3.516830083914101, 10.48867005109787, 3.734214961528778,
            10.972450286149979, 4.112870752811432, 11.351985931396484)
        ..cubicTo(4.489766895771027, 11.728849470615387, 4.992251634597778,
            11.937338829040527, 5.525954306125641, 11.937338829040527)
        ..cubicTo(6.059656977653503, 11.937338829040527, 6.562141418457031,
            11.728849470615387, 6.939004957675934, 11.351985931396484)
        ..lineTo(10.48774629831314, 7.803244590759277)
        ..cubicTo(10.792463213205338, 7.498527675867081, 10.792463213205338,
            7.004939317703247, 10.48774629831314, 6.701102256774902)
        ..cubicTo(10.183029383420944, 6.397265195846558, 9.68944102525711,
            6.396385341882706, 9.385603964328766, 6.701102256774902)
        ..lineTo(5.835949957370758, 10.24984359741211)
        ..cubicTo(5.671094566583633, 10.415578827261925, 5.382443070411682,
            10.416458666324615, 5.215828001499176, 10.24984359741211)
        ..cubicTo(5.118720062077045, 10.152735657989979, 5.063485818449408,
            10.044026330113411, 5.059901297092438, 9.944246292114258)
        ..cubicTo(5.057229199446738, 9.841794155538082, 5.109791338443756,
            9.736670017242432, 5.215828001499176, 9.630633354187012)
        ..lineTo(11.831290304660797, 3.0151712894439697)
        ..cubicTo(12.402402341365814, 2.444939136505127, 13.396715819835663,
            2.444939136505127, 13.96782785654068, 3.0151712894439697)
        ..cubicTo(14.556764721870422, 3.604108154773712, 14.556764721870422,
            4.562804818153381, 13.96782785654068, 5.151709079742432)
        ..lineTo(6.215518534183502, 12.90401840209961)
        ..cubicTo(5.1517303586006165, 13.966959357261658, 3.420536696910858,
            13.967806577682495, 2.356715977191925, 12.90401840209961)
        ..cubicTo(1.292895257472992, 11.840230226516724, 1.2929278016090393,
            10.109037280082703, 2.356715977191925, 9.04521656036377)
        ..lineTo(7.869123041629791, 3.532808780670166)
        ..cubicTo(8.173839956521988, 3.2281244695186615, 8.173839956521988,
            2.734503388404846, 7.869123041629791, 2.4306663274765015)
        ..cubicTo(7.564406126737595, 2.125982016324997, 7.070817768573761,
            2.125982016324997, 6.766980707645416, 2.4306663274765015)
        ..lineTo(1.254573404788971, 7.943073749542236)
        ..cubicTo(-0.41688889265060425, 9.614536046981812, -0.41688889265060425,
            12.335546255111694, 1.254573404788971, 14.00700855255127)
        ..cubicTo(2.090320885181427, 14.842756032943726, 3.188879072666168,
            15.260581016540527, 4.286557257175446, 15.260581016540527)
        ..cubicTo(5.385147869586945, 15.260581016540527, 6.482793152332306,
            14.842723429203033, 7.318540632724762, 14.00700855255127)
        ..lineTo(15.070850431919098, 6.254698753356934)
        ..cubicTo(16.26739627122879, 5.056328058242798, 16.267461597919464,
            3.109639823436737, 15.070035994052887, 1.912181556224823)
        ..close(),
      viewBox: Offset.zero & Size(16.0, 16.0),
    ),
    pageTree: PathIconData(
      path: Path()
        ..fillType = PathFillType.nonZero
        ..moveTo(5.012578725814819, 9.0)
        ..lineTo(8.974842548370361, 9.0)
        ..cubicTo(8.974842548370361, 9.550000011920929, 9.427672922611237, 10.0,
            9.98113203048706, 10.0)
        ..lineTo(11.9937105178833, 10.0)
        ..cubicTo(12.55345892906189, 10.0, 13.0, 9.550000011920929, 13.0, 9.0)
        ..lineTo(13.0, 7.0)
        ..cubicTo(13.0, 6.443750023841858, 12.547169625759125, 6.0,
            11.9937105178833, 6.0)
        ..lineTo(9.98113203048706, 6.0)
        ..cubicTo(9.421383619308472, 6.0, 8.974842548370361, 6.449999988079071,
            8.974842548370361, 7.0)
        ..lineTo(8.974842548370361, 8.0)
        ..lineTo(5.012578725814819, 8.0)
        ..lineTo(5.012578725814819, 4.0)
        ..lineTo(6.0188679695129395, 4.0)
        ..cubicTo(6.578616380691528, 4.0, 7.025157451629639, 3.550000011920929,
            7.025157451629639, 3.0)
        ..lineTo(7.025157451629639, 1.0)
        ..cubicTo(7.025157451629639, 0.4437500238418579, 6.572327077388763, 0.0,
            6.0188679695129395, 0.0)
        ..lineTo(4.00628936290741, 0.0)
        ..cubicTo(3.446540951728821, 0.0, 3.0, 0.44999998807907104, 3.0, 1.0)
        ..lineTo(3.0, 3.0)
        ..cubicTo(3.0, 3.550000011920929, 3.4528302550315857, 4.0,
            4.00628936290741, 4.0)
        ..lineTo(4.00628936290741, 15.0)
        ..lineTo(8.974842548370361, 15.0)
        ..cubicTo(8.974842548370361, 15.550000011920929, 9.427672922611237,
            16.0, 9.98113203048706, 16.0)
        ..lineTo(11.9937105178833, 16.0)
        ..cubicTo(12.55345892906189, 16.0, 13.0, 15.550000011920929, 13.0, 15.0)
        ..lineTo(13.0, 13.0)
        ..cubicTo(13.0, 12.443750023841858, 12.547169625759125, 12.0,
            11.9937105178833, 12.0)
        ..lineTo(9.98113203048706, 12.0)
        ..cubicTo(9.421383619308472, 12.0, 8.974842548370361,
            12.449999988079071, 8.974842548370361, 13.0)
        ..lineTo(8.974842548370361, 14.0)
        ..lineTo(5.012578725814819, 14.0)
        ..lineTo(5.012578725814819, 9.0)
        ..close(),
      viewBox: Offset.zero & Size(16.0, 16.0),
    ),
    phone: PathIconData(
      path: Path()
        ..fillType = PathFillType.evenOdd
        ..moveTo(15.265635505318642, 11.19683837890625)
        ..lineTo(15.352549567818642, 11.356201171875)
        ..cubicTo(15.568369880318642, 11.7686767578125, 16.21192456781864,
            12.98431396484375, 15.372080817818642, 14.07183837890625)
        ..cubicTo(15.012705817818642, 14.55621337890625, 14.240244880318642,
            15.44683837890625, 13.234385505318642, 15.85931396484375)
        ..lineTo(13.024424567818642, 15.93743896484375)
        ..lineTo(12.937510505318642, 15.9405517578125)
        ..cubicTo(12.708994880318642, 15.981201171875, 12.437510505318642,
            15.9906005859375, 12.237315192818642, 15.9906005859375)
        ..cubicTo(11.458994880318642, 15.9906005859375, 7.4091897159814835,
            15.80621337890625, 3.9218852669000626, 12.15618896484375)
        ..cubicTo(0.24024464190006256, 8.309326171875, -0.043935179710388184,
            3.39996337890625, 0.3779398202896118, 2.43743896484375)
        ..cubicTo(0.8310648202896118, 1.4593505859375, 1.758799210190773,
            0.71868896484375, 2.2685649544000626, 0.36871337890625)
        ..cubicTo(2.4775493294000626, 0.23431396484375, 2.6777446419000626,
            0.1468505859375, 2.8935649544000626, 0.0843505859375)
        ..cubicTo(3.0869243294000626, 0.0343017578125, 3.2558696419000626,
            0.012451171875, 3.4248149544000626, 0.012451171875)
        ..cubicTo(4.100596204400063, 0.012451171875, 4.6552834659814835,
            0.3411865234375, 4.9580178409814835, 0.52044677734375)
        ..lineTo(4.9658303409814835, 0.52496337890625)
        ..lineTo(5.1250100284814835, 0.621826171875)
        ..cubicTo(6.2216897159814835, 1.29681396484375, 6.6533303409814835,
            4.7061767578125, 6.6533303409814835, 4.7374267578125)
        ..cubicTo(6.6220803409814835, 5.4561767578125, 6.1406350284814835,
            5.9906005859375, 5.4531350284814835, 6.66558837890625)
        ..cubicTo(5.8437600284814835, 7.4124755859375, 6.5683694034814835,
            8.36871337890625, 7.0908303409814835, 8.903076171875)
        ..cubicTo(7.5996194034814835, 9.4249267578125, 8.450205817818642,
            10.14056396484375, 9.237315192818642, 10.5999755859375)
        ..cubicTo(9.846690192818642, 10.0343017578125, 10.287119880318642,
            9.66558837890625, 10.815440192818642, 9.543701171875)
        ..lineTo(11.153330817818642, 9.496826171875)
        ..lineTo(11.227549567818642, 9.49993896484375)
        ..cubicTo(11.258799567818642, 9.49993896484375, 14.646494880318642,
            10.074951171875, 15.265635505318642, 11.19683837890625)
        ..close()
        ..moveTo(12.599619880318642, 14.15936279296875)
        ..cubicTo(13.078135505318642, 13.949951171875, 13.602549567818642,
            13.40936279296875, 13.930674567818642, 12.97186279296875)
        ..cubicTo(14.027354255318642, 12.84368896484375, 13.977549567818642,
            12.63433837890625, 13.758799567818642, 12.22186279296875)
        ..lineTo(13.724619880318642, 12.15936279296875)
        ..cubicTo(13.315440192818642, 11.89373779296875, 11.750010505318642,
            11.43121337890625, 11.199229255318642, 11.324951171875)
        ..cubicTo(11.032237067818642, 11.4114990234375, 10.600596442818642,
            11.8140869140625, 10.287119880318642, 12.10601806640625)
        ..lineTo(10.243174567818642, 12.1468505859375)
        ..cubicTo(9.843760505318642, 12.53118896484375, 9.218760505318642,
            12.63433837890625, 8.708994880318642, 12.3812255859375)
        ..cubicTo(7.6523537784814835, 11.84368896484375, 6.4873147159814835,
            10.887451171875, 5.7968850284814835, 10.17498779296875)
        ..cubicTo(5.0937600284814835, 9.45623779296875, 4.102549329400063,
            8.1312255859375, 3.6591899544000626, 7.10308837890625)
        ..cubicTo(3.4531352669000626, 6.5999755859375, 3.5654399544000626,
            6.02496337890625, 3.9375102669000626, 5.62493896484375)
        ..lineTo(3.9687602669000626, 5.590576171875)
        ..lineTo(4.020518079400063, 5.53955078125)
        ..cubicTo(4.2929787784814835, 5.27105712890625, 4.7226662784814835,
            4.846923828125, 4.8339944034814835, 4.65936279296875)
        ..cubicTo(4.7500100284814835, 4.10931396484375, 4.3593850284814835,
            2.543701171875, 4.105479016900063, 2.121826171875)
        ..lineTo(4.031260266900063, 2.074951171875)
        ..cubicTo(3.8623149544000626, 1.9749755859375, 3.5468852669000626,
            1.7874755859375, 3.3750102669000626, 1.83123779296875)
        ..cubicTo(3.3281352669000626, 1.84686279296875, 3.2841899544000626,
            1.871826171875, 3.2685649544000626, 1.8812255859375)
        ..cubicTo(2.7216899544000626, 2.25933837890625, 2.2656352669000626,
            2.72808837890625, 2.058603897690773, 3.12493896484375)
        ..cubicTo(1.968760147690773, 3.71868896484375, 2.1054787784814835,
            7.63433837890625, 5.2343850284814835, 10.903076171875)
        ..cubicTo(8.211924090981483, 14.01873779296875, 11.589854255318642,
            14.1781005859375, 12.237315192818642, 14.1781005859375)
        ..cubicTo(12.430674567818642, 14.1781005859375, 12.552744880318642,
            14.16558837890625, 12.599619880318642, 14.15936279296875)
        ..close(),
      viewBox: Offset.zero & Size(16.0, 16.0),
    ),
  );

  final PathIconData propagation;

  final PathIconData productMenuClosed;

  final PathIconData pasteWord;

  final PathIconData paperclip;

  final PathIconData pageTree;

  final PathIconData phone;

  Map<String, PathIconData> reflect() => {
        'propagation': propagation,
        'productMenuClosed': productMenuClosed,
        'pasteWord': pasteWord,
        'paperclip': paperclip,
        'pageTree': pageTree,
        'phone': phone,
      };
  @override
  List<Object?> get props => [
        propagation,
        productMenuClosed,
        pasteWord,
        paperclip,
        pageTree,
        phone,
      ];
}
