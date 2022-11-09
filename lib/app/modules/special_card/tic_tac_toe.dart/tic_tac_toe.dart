import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:delivery_kris/app/modules/special_card/tic_tac_toe.dart/tic_tac_toe_controller.dart';
import 'package:delivery_kris/app/shared/resources/colors.dart';
import 'package:delivery_kris/app/shared/resources/text_style.dart';

import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';

final controller = Modular.get<TicTacToeController>();

class TicTacToeWidget extends StatelessWidget {
  final StoryIconModel story;
  const TicTacToeWidget({Key? key, required this.story}) : super(key: key);

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
              controller.reset();
              Modular.to.pop();
            },
            icon: const Icon(Icons.close),
          ),
        ),
        body: Observer(builder: (context) {
          controller.player;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      controller.player == 1
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            )
                          : const Icon(
                              Icons.add_reaction_rounded,
                              color: ColorsApp.primary,
                              size: 30,
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'esta na sua a vez de jogar',
                          style: TextStyles.regular,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      children: List.generate(9, (index) {
                        return InkWell(
                          onTap: () {
                            controller.played(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorsApp.gray)),
                            child: controller.selected[index] == 1
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 50,
                                  )
                                : controller.selected[index] == 2
                                    ? const Icon(
                                        Icons.add_reaction_rounded,
                                        color: ColorsApp.primary,
                                        size: 50,
                                      )
                                    : Container(),
                          ),
                        );
                      }),
                    ),
                  ),
                  controller.state == "end"
                      ? InkWell(
                          onTap: () {
                            controller.reset();
                          },
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                vertical: 20.h, horizontal: 20.w),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: ColorsApp.primary),
                            child: Text("Reiniciar",
                                textAlign: TextAlign.center,
                                style: TextStyles.titleCard
                                    .copyWith(color: ColorsApp.black)),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}

tictacTile() {
  return Column(
    children: [],
  );
}
