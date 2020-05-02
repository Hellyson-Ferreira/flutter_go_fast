import 'package:flutter/material.dart';

abstract class ISharedRepositoryInterface{
  String readUserInfor();
  saveUserInfo(String user);

  Future<ThemeMode> readThemeMode();
  Future<bool> saveTheme(ThemeMode themeMode);

}