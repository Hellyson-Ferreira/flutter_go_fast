import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/core/intercionalizations/app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{
  const AppLocalizationsDelegate ();

  @override
  bool isSupported(Locale locale) {
    return ['pt','en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;

}