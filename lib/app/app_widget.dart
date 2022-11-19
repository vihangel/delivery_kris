import 'package:delivery_kris/app/shared/resources/colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bot_toast/bot_toast.dart';

class AppWidget extends StatelessWidget {
  final botToastBuilder = BotToastInit();

  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, child) => MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: (context, child) {
          //child = DevicePreview.appBuilder(context, child);
          child = botToastBuilder(context, child);
          return child;
        },
        color: ColorsApp.black,
        debugShowCheckedModeBanner: false,
        title: 'Delivery Kris',
        theme: ColorsApp.theme,
        darkTheme: ColorsApp.theme,
        themeMode: ThemeMode.dark,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
