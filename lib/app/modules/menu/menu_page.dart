import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;
import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: ColorsApp.gray,
            height: 1.0,
            width: size.width * 0.9,
          ),
        ),
        foregroundColor: ColorsApp.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Modular.to.pop();
          },
          icon: const Icon(
            Icons.close,
            color: ColorsApp.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Te amo",
                style: TextStyles.title,
              ),
              Text(
                "Foi expontaneo na hora que coloquei",
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Se você não for a Kris",
                      style: TextStyles.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                ],
              ),
              Text(
                "Essa parte é para você mesmo!\nDepois dessa exposição desnecessária",
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            js.context.callMethod('open',
                                ["https://www.instagram.com/kr.sanches/"]);
                          },
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            size: 35,
                          ),
                        ),
                      ),
                      Text(
                        "kr.sanches",
                        style: TextStyles.regular,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            js.context.callMethod('open',
                                ["https://github.com/vihangel/delivery_kris"]);
                          },
                          child: const Icon(
                            FontAwesomeIcons.github,
                            size: 35,
                          ),
                        ),
                      ),
                      Text(
                        "delivery_kris",
                        style: TextStyles.regular,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () {
                            js.context.callMethod('open',
                                ["https://www.instagram.com/vih.angel/"]);
                          },
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            size: 35,
                          ),
                        ),
                      ),
                      Text(
                        "vih.angel",
                        style: TextStyles.regular,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
