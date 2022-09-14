import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_page.dart';
import 'modules/splash/splash_page.dart';
import 'modules/warning/warning_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        transition: TransitionType.leftToRightWithFade,
        child: (_, args) => const SplashPage()),
    ChildRoute('/warning',
        transition: TransitionType.rightToLeft,
        child: (_, args) => const WarningPage()),
    ChildRoute('/home',
        transition: TransitionType.rightToLeft,
        child: (_, args) => const HomePage()),
  ];
}
