import 'package:flutter/src/material/app.dart';
import 'package:flutter_go_fast/app/core/features/local_storage/local_storage.dart';
import 'package:flutter_go_fast/app/core/interfaces/shared_repository_interface.dart';

class SharedRepository implements ISharedRepositoryInterface {
  static const String THEME_MODE = 'theme_mode';
  static const String THEME_MODE_DARK = 'ThemeMode.dark';
  static const String THEME_MODE_LIGHT = 'ThemeMode.light';

  @override
  String redUserInfor() {
    throw UnimplementedError();
  }

  @override
  saveUserInfo(String user) {
    throw UnimplementedError();
  }

  @override
  Future<ThemeMode> readThemeMode() async {
    return await LocalStorege.getValue<String>(THEME_MODE).then(
      (value) {
        switch (value) {
          case THEME_MODE_DARK:
            return ThemeMode.dark;
            break;
          case THEME_MODE_LIGHT:
            return ThemeMode.light;
            break;
          default:
            return ThemeMode.light;
            break;
        }
      },
    );
  }

  @override
  String readUserInfor() {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveTheme(ThemeMode themeMode) async {
    return await LocalStorege.setValue<String>(
      THEME_MODE,
      themeMode.toString(),
    );
  }
}
