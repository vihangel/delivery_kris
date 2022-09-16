import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/text_style.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  final Function()? onTap;
  const CardWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
