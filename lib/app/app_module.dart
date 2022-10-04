import 'package:delivery_kris/app/modules/story/story_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_controller.dart';
import 'modules/home/home_page.dart';
import 'modules/splash/splash_page.dart';
import 'modules/story/story_page.dart';
import 'modules/ticket/ticket_controller.dart';
import 'modules/warning/warning_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
    Bind.lazySingleton((i) => HomeController()),
    Bind.lazySingleton((i) => StoryController()),
    Bind.lazySingleton((i) => TicketController()),
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
