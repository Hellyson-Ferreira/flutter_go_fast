import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/core/features/theme/app_theme_dark.dart';
import 'package:flutter_go_fast/app/core/features/theme/app_theme_light.dart';
import 'package:flutter_go_fast/app/core/interfaces/thme_app_interface.dart';

class AppThemeFactory {
  static IThemeAppInterface getTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return AppThemeDark();
        break;
      case ThemeMode.light:
        return AppThemeLight();
        break;
      default:
        return AppThemeLight();
        break;
    }
  }
}
