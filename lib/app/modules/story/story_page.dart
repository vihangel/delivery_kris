import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:delivery_kris/app/modules/story/story_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

final controller = Modular.get<StoryController>();

class StoryPage extends StatefulWidget {
  final StoryIconModel story;
  const StoryPage({Key? key, required this.story}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  Duration? position = const Duration(seconds: 1);

  @override
  void initState() {
    getValues();
    super.initState();
  }

  getValues() async {
    controller.duration = null;
    // play
    // duration = await controller.players.getDuration();
    // print(duration);
  }

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
            controller.players.stop();
            Modular.to.pop();
          },
          icon: Icon(Icons.close),
        ),
        actions: [
          Observer(builder: (context) {
            controller.getPosition();

            return controller.duration != null
                ? Row(
                    children: [
                      Text(controller.label(), style: TextStyles.subTitleCard),
                      SizedBox(
                        width: 220.w,
                        child: Slider(
                          value: double.parse(
                              controller.positionSlider.toString()),
                          min: 0,
                          max: double.parse(
                              controller.duration!.inSeconds.toString()),
                          divisions: int.parse(
                              controller.duration!.inSeconds.toString()),
                          //  duration!.inSeconds,
                          label: controller.label(),
                          onChangeEnd: controller.onChangeSlider,
                          onChanged: controller.onChangeSlider,
                        ),
                      ),
                      !controller.isPaused
                          ? IconButton(
                              onPressed: () {
                                controller.players.pause();
                                controller.isPaused = true;
                              },
                              icon: Icon(Icons.pause),
                            )
                          : IconButton(
                              onPressed: () async {
                                await controller.players.play(AssetSource(
                                    'audio/${widget.story.information!.voice}'));

                                controller.isPaused = false;
                              },
                              icon: const Icon(Icons.play_arrow_rounded)),
                    ],
                  )
                : Container();
          }),
        ],
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
                  icon: widget.story.icon ?? 'kris.png',
                  subTitle: widget.story.subTitle ?? '',
                  title: widget.story.title ?? '',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.story.information!.voice != null
                      ? IconButton(
                          icon: const Icon(Icons.volume_up,
                              color: ColorsApp.white),
                          onPressed: () async {
                            await controller.players.play(AssetSource(
                                'audio/${widget.story.information!.voice}'));

                            controller.duration == null
                                ? controller.duration =
                                    (await controller.players.getDuration())!
                                : controller.players.seek(Duration(
                                    seconds: int.parse(controller.positionSlider
                                        .round()
                                        .toString())));
                            print(
                                'Duration: ${controller.duration!.inSeconds}');
                          },
                        )
                      : Container(),
                  Text(
                    widget.story.title ?? '',
                    style: TextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                widget.story.information!.text!,
                style: TextStyles.regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Image.asset(
                  'assets/img/${widget.story.information!.img![0]}',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
