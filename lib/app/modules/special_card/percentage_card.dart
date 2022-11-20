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

class PercentageCards extends StatelessWidget {
  final StoryIconModel story;
  const PercentageCards({Key? key, required this.story}) : super(key: key);

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
                  icon: story.icon ?? 'kris.png',
                  subTitle: story.subTitle ?? '',
                  title: story.title ?? '',
                ),
                SizedBox(
                  height: 20.h,
                ),
                field(context,
                    title: 'Fofocas',
                    percentage: 100,
                    subtitle:
                        "Nossa conversa no inicio movimentada 1000% sobre fofocas"),
                field(context,
                    title: 'Filmes/Series',
                    percentage: 100,
                    subtitle:
                        "Não sei como, mas damos muito certo falando sobre filmes e series"),
                field(context,
                    title: 'Jogos',
                    percentage: 100,
                    subtitle: "Preciso nem falar nada né?"),
                field(context,
                    title: 'Músicas',
                    percentage: 80,
                    subtitle:
                        "Até que ponto você é gada eu não sei, mas deixei alto essa porcentagem pq aparentemente é isso\nTirando sertanejo que ninguém merece"),
                field(context,
                    title: 'Comida',
                    percentage: 30,
                    subtitle:
                        "Seu gosto para comida é duvidoso, gosta de azeitona, alho e pamonha eca"),
                field(context,
                    title: 'Amizades',
                    percentage: 20,
                    subtitle:
                        "Os ciclos de amizades que temos são EXTREMAMENTE diferentes"),
                field(context,
                    title: 'Situações de conflito',
                    percentage: 0,
                    subtitle:
                        "Morro de medo, só de ver sua carinha dá de saber que já vai ter barraco"),
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

  Widget field(context, {title, percentage, subtitle}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyles.titleCard,
              ),
              Text(
                '$percentage%',
                style: TextStyles.titleCard.copyWith(
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
                  height: 10.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsApp.gray,
                  ),
                ),
                Container(
                  height: 10.h,
                  width: MediaQuery.of(context).size.width *
                      0.9 *
                      percentage /
                      100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ),
          Text(
            subtitle,
            style: TextStyles.subTitleCard,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
