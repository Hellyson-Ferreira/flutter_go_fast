import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/app_controller.dart';
import 'package:flutter_go_fast/app/core/intercionalizations/app_translate.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Dark mode'),
              onPressed: () {
                Modular.get<AppController>().setThemeData(ThemeMode.dark);
              },
            ),
            RaisedButton(
              child: Text('Ligth mode'),
              onPressed: () {Modular.get<AppController>().setThemeData(ThemeMode.light);},
            ),
          ],
        ),
      ),
    );
  }
}
