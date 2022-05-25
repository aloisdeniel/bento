import 'package:flutter/widgets.dart';
import 'app_theme_data.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({required Key? key, required Widget child, required this.data})
      : super(key: key, child: child);

  final AppThemeData data;

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
