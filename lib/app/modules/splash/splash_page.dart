import 'package:delivery_kris/app/shared/resources/colors.dart';
import 'package:delivery_kris/app/shared/widget/alert_dialog/alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/resources/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      verify();
    });
  }

  void verify() {
    if (!DateTime.now().isAfter(DateTime(2022, 11, 21))) {
      Alert.open(context,
          title: "Já é seu aniversário? \nNão. Então, volte na data certa!\n",
          subTitle:
              "Aguarde até o dia 21/11/2022\nAinda faltam ${DateTime(2022, 11, 21).difference(DateTime.now()).inMinutes} minutos",
          functionMainButton: () => Navigator.pop(context));
    } else {
      Alert.open(context,
          title:
              "Parabens! Você já pode usar o app!\n\nPorém antes diga a palavra mágica:",
          textField: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              hintText: "Dica: é o comando para rodar o app",
            ),
            onChanged: (value) {
              if (value == "flutter run") {
                Navigator.pop(context);
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pushReplacementNamed(context, '/warning');
                });
              }
            },
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          verify();
        });
      }),
      child: Scaffold(
        backgroundColor: ColorsApp.black,
        body: Center(
          child: SvgPicture.asset(
            ImagesApp.logoWithText,
            width: 220.w,
          ),
        ),
      ),
    );
  }
}
