import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/resources/images.dart';
import '../../shared/resources/text_style.dart';

class WarningPage extends StatefulWidget {
  const WarningPage({Key? key}) : super(key: key);

  @override
  State<WarningPage> createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          children: [
            Flexible(
              child: SvgPicture.asset(
                ImagesApp.logo,
                height: 132.h,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text(
                "Aviso",
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text(
                "Esse app é totalmente para uma boiolagem sem tamanho, então caso você não goste dessas coisas nem prossiga...",
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
