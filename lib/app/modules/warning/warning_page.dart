import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/resources/images.dart';
import '../../shared/resources/text_style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            ImagesApp.logo,
            height: 30,
          ),
          Text(
            "Aviso",
            style: TextStyles.title,
          ),
          Text(
            "Esse app é totalmente para uma boiolagem sem tamanho, então caso você não goste dessas coisas nem prossiga...",
            style: TextStyles.regular,
          ),
        ],
      ),
    );
  }
}
