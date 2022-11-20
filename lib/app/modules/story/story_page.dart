import 'package:audioplayers/audioplayers.dart';
import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:delivery_kris/app/modules/story/story_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

final controller = Modular.get<StoryController>();
AudioPlayer players = AudioPlayer();

class StoryPage extends StatefulWidget {
  final StoryIconModel story;
  const StoryPage({Key? key, required this.story}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    super.initState();
    getValues();
  }

  getValues() {
    controller.duration = null;
    controller.positionSlider = 0.0;
    controller.isPaused = false;
  }

  @override
  void dispose() {
    players.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      players.onDurationChanged.listen((Duration duration) {
        controller.duration = duration;
        controller.isPaused = false;
      });
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
          actions: [
            Observer(builder: (context) {
              controller.getPosition(players);

              return controller.duration != null &&
                      controller.duration != Duration.zero
                  ? Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(controller.label(),
                              style: TextStyles.subTitleCard),
                          SizedBox(
                            width: 150.w,
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
                              onChangeEnd: (value) {
                                controller.onChangeSlider(value, players);
                              },
                              onChanged: (value) {
                                controller.onChangeSlider(value, players);
                              },
                            ),
                          ),
                          !controller.isPaused
                              ? IconButton(
                                  onPressed: () {
                                    players.pause();
                                    controller.isPaused = true;
                                  },
                                  icon: const Icon(Icons.pause),
                                )
                              : IconButton(
                                  onPressed: () async {
                                    players.resume();

                                    controller.isPaused = false;
                                  },
                                  icon: const Icon(Icons.play_arrow_rounded)),
                          TextButton(
                            onPressed: () {
                              controller.setPlayback(players);
                              controller.isPaused = true;
                            },
                            child: Text("${controller.playBack}x",
                                style: TextStyles.subTitleCard),
                          ),
                        ],
                      ),
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
                CardWidget(
                  icon: widget.story.icon ?? 'coringa.png',
                  subTitle: widget.story.subTitle ?? '',
                  title: widget.story.title ?? '',
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
                              await players.play(
                                AssetSource(
                                    'audio/${widget.story.information!.voice}'),
                              );

                              print(
                                  'Duration: ${controller.duration?.inSeconds}');
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
                widget.story.information!.img != null
                    ? Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image.asset(
                          'assets/img/${widget.story.information!.img![0]}',
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
