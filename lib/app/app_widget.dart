import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/core/intercionalizations/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  GoFast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      supportedLocales: [
        Locale('en','US'),
        Locale('pt','BR')
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
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
}