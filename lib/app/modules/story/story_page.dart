import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

class StoryPage extends StatelessWidget {
  final StoryIconModel story;
  const StoryPage({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
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
          icon: Icon(Icons.close),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.close),
        //   ),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: size.height,
          child: ListView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 150.h,
                child: CardWidget(
                  icon: story.icon ?? 'kris.png',
                  subTitle: story.subTitle ?? '',
                  title: story.title ?? '',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  story.information!.voice != null
                      ? IconButton(
                          icon: const Icon(Icons.volume_up,
                              color: ColorsApp.white),
                          onPressed: () {},
                        )
                      : Container(),
                  Text(
                    story.title ?? '',
                    style: TextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                story.information!.text!,
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorsApp.gray,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Image.asset(
                  'assets/img/${story.information!.img![0]}',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
