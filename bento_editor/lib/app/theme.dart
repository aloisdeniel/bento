import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    super.key,
    required super.child,
    required this.data,
  });

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()?.data ??
        AppThemeData.fallback;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return oldWidget.data != data;
  }
}

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.color,
    required this.typography,
    required this.spacing,
  });

  static AppThemeData fallback = AppThemeData(
    color: const ColorAppData.dark(),
    typography: TypographyAppData.regular(),
    spacing: const SpacingAppData.regular(),
  );

  final ColorAppData color;
  final TypographyAppData typography;
  final SpacingAppData spacing;

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ColorAppData extends Equatable {
  const ColorAppData({
    required this.background1,
    required this.background2,
    required this.background3,
    required this.foreground1,
    required this.appAccent,
    required this.themeAccent,
  });

  const ColorAppData.dark()
      : background1 = const Color(0xFF232338),
        background2 = const Color(0xFF171A2D),
        background3 = const Color(0xFF141418),
        foreground1 = const Color(0xFFFFFFFF),
        appAccent = const Color(0xFF4D69FF),
        themeAccent = const Color(0xFFFFCA0E);

  final Color background1;
  final Color background2;
  final Color background3;
  final Color foreground1;
  final Color appAccent;
  final Color themeAccent;

  @override
  List<Object?> get props => [
        background1,
        background2,
        background3,
        foreground1,
        appAccent,
        themeAccent,
      ];
}

class TypographyAppData extends Equatable {
  const TypographyAppData({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.code,
    required this.button,
    required this.paragraph,
  });

  TypographyAppData.regular()
      : title1 = GoogleFonts.poppins(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2 = GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3 = GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        title4 = GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        paragraph = GoogleFonts.poppins(
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
        button = GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        code = GoogleFonts.firaCode(
          fontSize: 12,
          decoration: TextDecoration.none,
        );

  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle title4;
  final TextStyle paragraph;
  final TextStyle button;
  final TextStyle code;

  @override
  List<Object?> get props => [
        title1,
        title2,
        title3,
        title4,
        paragraph,
        button,
        code,
      ];
}

class SpacingAppData extends Equatable {
  const SpacingAppData({
    required this.small,
    required this.semiSmall,
    required this.medium,
    required this.semiBig,
    required this.big,
    required this.extraBig,
  });

  const SpacingAppData.regular()
      : small = const EdgeInsets.all(4),
        semiSmall = const EdgeInsets.all(6),
        medium = const EdgeInsets.all(8),
        semiBig = const EdgeInsets.all(12),
        big = const EdgeInsets.all(24),
        extraBig = const EdgeInsets.all(36);

  final EdgeInsets small;
  final EdgeInsets semiSmall;
  final EdgeInsets medium;
  final EdgeInsets semiBig;
  final EdgeInsets big;
  final EdgeInsets extraBig;

  @override
  List<Object?> get props => [
        small,
        semiSmall,
        medium,
        semiBig,
        big,
        extraBig,
      ];
}
