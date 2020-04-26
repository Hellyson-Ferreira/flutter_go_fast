import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localization_delegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations({
    this.locale,
  });

  Map<String,String> _localizationString;

  Future<bool>  load() async{
    String jsonString = await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String,dynamic> jsonMap = json.decode(jsonString);

    _localizationString = jsonMap.map((key, value) =>  MapEntry(key, value.toString()));
    return true;
  }
  String translate(String key){
    return _localizationString[key];

  } 
  static AppLocalizations of(BuildContext context){
    return Localizations.of<AppLocalizations>(context, AppLocalizations);

  }
  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();
}
