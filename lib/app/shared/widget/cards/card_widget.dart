import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/text_style.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  const CardWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            'assets/img/$icon',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          title,
          style: TextStyles.titleCard,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          subTitle,
          style: TextStyles.subTitleCard,
        ),
      ],
    );
  }
}
