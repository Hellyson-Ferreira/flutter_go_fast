import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/app_controller.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'core/features/localization/app_localizations.dart';



class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return MaterialApp(
          title: 'Flutter  GoFast',
          theme: Modular.get<AppController>().themeApp.getTheme(),
          initialRoute: '/',
          navigatorKey: Modular.navigatorKey,
          onGenerateRoute: Modular.generateRoute,
          supportedLocales: [
            Locale('en','US'),
            Locale('pt','BR')
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, suportendlocales){
            for(var suportendlocale in suportendlocales){
              if(suportendlocale.languageCode == locale.languageCode && suportendlocale.countryCode == locale.countryCode){
                return suportendlocale;
              }
              
            }
            return suportendlocales.first;
          },
           
        );
      }
    );
  }
}