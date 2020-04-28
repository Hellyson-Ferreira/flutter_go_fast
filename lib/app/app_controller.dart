import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/core/interfaces/thme_app_interface.dart';
import 'package:flutter_go_fast/app/core/theme/app_theme_dark.dart';
import 'package:flutter_go_fast/app/core/theme/app_theme_light.dart';
import 'package:mobx/mobx.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {

  @observable
  IThemeAppInterface themeApp = ApppThemeLight();

  @action
  setThemeData(ThemeMode thmemeMode){
    switch (thmemeMode) {
      case ThemeMode.dark:
      themeApp = ApppThemeDark();        
        break;
      default:
       themeApp = ApppThemeLight();
       break;   
    }
  }
  
}