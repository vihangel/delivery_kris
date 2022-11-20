import 'package:delivery_kris/app/shared/resources/colors.dart';
import 'package:delivery_kris/app/shared/widget/buttons/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Alert {
  static Future<void> open(
    BuildContext context, {
    String? title,
    String? subTitle,
    String titleMainButton = 'ok',
    VoidCallback? functionMainButton,
    bool? iconStatus,
    Widget? textField,
  }) async {
    return showDialog(
        context: context,
        builder: ((context) => Dialog(
              insetPadding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (iconStatus == true)
                      const Icon(
                        Icons.check_circle,
                        color: ColorsApp.primary,
                        size: 100,
                      ),
                    if (iconStatus == false)
                      SvgPicture.asset(
                        "assets/img/alert.svg",
                        height: 100,
                      ),
                    const SizedBox(height: 20),
                    Text(
                      "$title",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsApp.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    subTitle != null
                        ? Text(
                            subTitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: ColorsApp.black,
                            ),
                          )
                        : Container(),
                    textField ?? Container(),
                    const SizedBox(height: 20),
                    LoginButton(
                      title: titleMainButton,
                      onPressed: functionMainButton,
                    )
                  ],
                ),
              ),
            )));
  }
}
