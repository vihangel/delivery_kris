import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/text_style.dart';

class Ticket extends StatelessWidget {
  final String title;
  final String subTitle;
  final int value;
  final Function()? onTap;
  const Ticket(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.onTap,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.w),
        width: MediaQuery.of(context).size.width,
        height: 100.h,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/img/ticket.svg', height: 40.h),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyles.titleCard,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "$value x",
                        style:
                            TextStyles.titleCard.copyWith(color: Colors.yellow),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(
                    subTitle,
                    style: TextStyles.subTitleCard,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 10.w,
            // ),
          ],
        ),
      ),
    );
  }
}
