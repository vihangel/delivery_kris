import 'dart:html';
import 'package:universal_html/html.dart' as html;
import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_js/video_js.dart';
import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

class PhotosEspecial extends StatefulWidget {
  final StoryIconModel story;
  const PhotosEspecial({Key? key, required this.story}) : super(key: key);

  @override
  State<PhotosEspecial> createState() => _PhotosEspecialState();
}

class _PhotosEspecialState extends State<PhotosEspecial> {
  late VideoJsController _controller;
  late VideoJsController _controller2;
  late VideoJsController _controller3;

  @override
  void initState() {
    super.initState();
    _controller = VideoJsController("videoId",
        videoJsOptions: VideoJsOptions(
            controls: true,
            loop: false,
            muted: false,
            poster:
                'https://github.com/vihangel/delivery_kris/blob/main/assets/img/photos/we1_banner.png?raw=true',
            aspectRatio: '16:9',
            fluid: false,
            language: 'en',
            liveui: false,
            notSupportedMessage: 'this movie type not supported',
            playbackRates: [1, 2, 3],
            preferFullWindow: false,
            responsive: false,
            sources: [
              Source(
                  "https://github.com/vihangel/delivery_kris/blob/main/assets/img/photos/we1.mp4?raw=true",
                  "video/mp4")
            ],
            suppressNotSupportedError: false));

    // _controller2 = VideoJsController.network(
    //     "https://github.com/vihangel/delivery_kris/blob/main/assets/img/photos/we2.mp4?raw=true")
    //   ..initialize().then((_) {
    //     _controller2.play();
    //     _controller2.pause();
    //     _controller2.setLooping(true);
    //     setState(() {});
    //   });
    // _controller3 = VideoJsController.network(
    //     "https://github.com/vihangel/delivery_kris/blob/main/assets/img/photos/we3.mp4?raw=true")
    //   ..initialize().then((_) {
    //     _controller3.play();
    //     _controller3.pause();
    //     _controller3.setLooping(true);
    //     setState(() {});
    //   });
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
            Modular.to.pop();
          },
          icon: const Icon(
            Icons.close,
            color: ColorsApp.white,
          ),
        ),
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
                icon: widget.story.icon ?? 'kris.png',
                subTitle: widget.story.subTitle ?? '',
                title: widget.story.title ?? '',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Juntinhos\nFotos",
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
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    "assets/img/photos/we${index + 1}.jpg",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Bereal",
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
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 17,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    "assets/img/photos/be${index + 1}.jpg",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Juntinhos\nVideos",
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
              videoField(_controller),
              // videoField(_controller2),
              // videoField(_controller3),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorsApp.gray,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Você versão\nHilo 🪢",
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
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 13,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    "assets/img/photos/tt${index + 1}.jpg",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  );
                },
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget field(
    context,
    title,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.white, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Text(
                title,
                style: TextStyles.titleCard,
              ),
            ],
          ),
        ],
      ),
    );
  }

  videoField(controller) {
    return Column(
      children: [
        VideoJsWidget(
          videoJsController: controller,
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              setState(() {
                controller.isPaused((isPlaying) {
                  isPlaying != true ? controller.pause() : controller.play();
                });
              });
            },
            child: Icon(
              controller.isPaused((isPlaying) {
                        return isPlaying;
                      }) !=
                      true
                  ? Icons.pause
                  : Icons.play_arrow,
              color: ColorsApp.white,
            ),
          ),
        ),
      ],
    );
  }
}
