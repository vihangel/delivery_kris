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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset(
                'assets/img/$icon',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              title,
              style: TextStyles.titleCard,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            subTitle,
            style: TextStyles.subTitleCard,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
