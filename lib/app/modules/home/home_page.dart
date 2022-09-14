import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _sections(size) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: ColorsApp.gray,
                height: 1,
              ),
            ),
            Expanded(
              child: Text(
                "Abril",
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
        const SizedBox(
          height: 20,
        ),
        GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: EdgeInsets.symmetric(horizontal: 10),
            crossAxisSpacing: 30.w,
            mainAxisSpacing: 30.h,
            children: List.generate(6, (index) {
              return _cards(size);
            })),
      ],
    );
  }

  _cards(size) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            "assets/img/icon_1.png",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "Story 1",
          style: TextStyles.titleCard,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "9 de Abril",
          style: TextStyles.subTitleCard,
        ),
      ],
    );
  }

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
          leading: Image.asset('assets/img/kris.png'),
          title: Text(
            'DELIVERY KRIS',
            style: TextStyles.title,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/img/menu.svg'),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: ListView(
            children: [
              Text(
                "Linha do tempo",
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
              Text(
                "Sim, totalmente boiola, gay, bichinha, cafona, como as crianças modernas de hoje dizem “cringe”",
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              _sections(size),
            ],
          ),
        ));
  }
}
