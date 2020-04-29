import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_go_fast/app/app_controller.dart';
import 'package:flutter_go_fast/app/app_widget.dart';
import 'package:flutter_go_fast/app/core/interfaces/shared_repository_interface.dart';
import 'package:flutter_go_fast/app/core/repositores/shared_repository.dart';
import 'package:flutter_go_fast/app/modules/home/home_module.dart';
import 'package:flutter_go_fast/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
        Bind<ISharedRepositoryInterface>(
          (i) => SharedRepository(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (_, args) => SplashPage(),
          transition: TransitionType.noTransition,
        ),
        Router(
          '/home',
          module: HomeModule(),
        )
      ];
}
