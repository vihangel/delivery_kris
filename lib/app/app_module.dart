import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        transition: TransitionType.rightToLeft,
        child: (_, args) => SplashPage()),
  ];
}
