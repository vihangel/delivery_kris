import 'package:beyond_app/app/modules/home/home_controller.dart';
import 'package:beyond_app/app/modules/home/home_page.dart';
import 'package:beyond_app/app/modules/moments/moments_controller.dart';
import 'package:beyond_app/app/modules/moments/moments_page.dart';
import 'package:beyond_app/app/modules/rooms/create_group/create_group_controller.dart';
import 'package:beyond_app/app/modules/rooms/create_peripheral/create_peripheral_controller.dart';
import 'package:beyond_app/app/modules/moments/screens/config_moment/config_moment_controller.dart';
import 'package:beyond_app/app/modules/rooms/create_room/create_room_controller.dart';
import 'package:beyond_app/app/modules/rooms/edit_group/edit_group_controller.dart';
import 'package:beyond_app/app/modules/rooms/edit_peripheral/edit_peripheral_controller.dart';
import 'package:beyond_app/app/modules/rooms/rooms_controller.dart';
import 'package:beyond_app/app/modules/rooms/rooms_page.dart';
import 'package:beyond_app/app/modules/shortcuts/shortcuts_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/moments/screens/add_peripherals_moment/add_peripherals_moment.dart';
import 'modules/moments/screens/config_moment/config_moment_page.dart';
import 'modules/moments/screens/rename_moment/rename_moment.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
    Bind.lazySingleton((i) => HomeController()),
    Bind.lazySingleton((i) => MomentsController()),
    Bind.lazySingleton((i) => RoomsController()),
    Bind.lazySingleton((i) => CreateRoomController()),
    Bind.lazySingleton((i) => CreateGroupController()),
    Bind.lazySingleton((i) => CreatePeripheralController()),
    Bind.lazySingleton((i) => ConfigMomentController()),
    Bind.lazySingleton((i) => EditGroupController()),
    Bind.lazySingleton((i) => EditPeripheralController()),
    Bind.lazySingleton((i) => ShortcutsController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/createMoment',
        transition: TransitionType.rightToLeft,
        child: (_, args) => MomentsPage()),
    ChildRoute('/rooms', child: (_, args) => RoomsPage()),
    ChildRoute('/moments', child: (_, args) => MomentsPage()),
    ChildRoute('/renameMoment', child: (_, args) => RenameMoment()),
    ChildRoute('/momentAddPeripheral',
        transition: TransitionType.fadeIn,
        child: (_, args) => AddPeripheralsMoment()),
    ChildRoute('/configMoment', child: (_, args) => ConfigMomentPage()),
  ];
}
