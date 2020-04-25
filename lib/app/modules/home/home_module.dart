import 'package:flutter_go_fast/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => HomeController(),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (_, arg) => HomePage(),
        )
      ];
  static Inject get to => Inject<HomeModule>.of();
}
