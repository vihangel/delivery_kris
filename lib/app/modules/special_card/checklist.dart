import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

class CheckListEspecial extends StatelessWidget {
  final StoryIconModel story;
  const CheckListEspecial({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
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
            icon: const Icon(Icons.close),
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
                  icon: story.icon ?? 'kris.png',
                  subTitle: story.subTitle ?? '',
                  title: story.title ?? '',
                ),
                SizedBox(
                  height: 20.h,
                ),
                field(
                  context,
                  'Date duplo de jogos com o Caio',
                ),
                field(
                  context,
                  'Risoto de camarão',
                ),
                field(
                  context,
                  'Dia de jogos',
                ),
                field(
                  context,
                  'Comer japonês 🤪',
                ),
                field(
                  context,
                  'Role cultural',
                ),
                field(
                  context,
                  'Cinema do Sesc',
                ),
                field(
                  context,
                  'Date Master Chef em casa',
                ),
                field(
                  context,
                  'Acampar no carro(?)',
                ),
                field(
                  context,
                  'Viajar de carro',
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
                        "Filmes",
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
                field(
                  context,
                  'Wall-e',
                ),
                field(
                  context,
                  'Operaçaõ Big Hero',
                ),
                field(
                  context,
                  'Elemental',
                ),
                field(
                  context,
                  'A vida é uma festa',
                ),
                field(
                  context,
                  'Detona Ralph',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Sim so tem desenho pq eu sou uma criança",
                    style: TextStyles.subTitleCard,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                )
              ],
            ),
          ),
        ),
      );
    });
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
}
