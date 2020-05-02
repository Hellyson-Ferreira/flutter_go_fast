import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter_go_fast/app/core/interfaces/thme_app_interface.dart';

class AppThemeDark implements IThemeAppInterface{
  @override
  ThemeData getTheme() {
    return ThemeData.dark();
  }

}