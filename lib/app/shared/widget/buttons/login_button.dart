import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/colors.dart';

//Mudar CallBack Required
class LoginButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const LoginButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(ColorsApp.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0.r),
                ))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
              child: Text(title,
                  style: TextStyle(
                    color: ColorsApp.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
