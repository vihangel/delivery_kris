import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';
import 'home_controller.dart';

final controller = Modular.get<HomeController>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    loadJsonData();
    super.initState();
  }

  void loadJsonData() async {
    await controller.loadJsonData();
  }

  _sections(size, topic) {
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
                controller.data[topic].topic!,
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
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          crossAxisSpacing: 30.w,
          mainAxisSpacing: 30.h,
          children: List.generate(
            controller.data[topic].infos!.length,
            (index) {
              return CardWidget(
                icon: controller.data[topic].infos![index].icon ?? 'kris.png',
                subTitle: controller.data[topic].infos![index].subTitle ?? '',
                title: controller.data[topic].infos![index].title ?? '',
              );
            },
          ),
        ),
      ],
    );
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
              Observer(
                builder: (context) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: controller.data.length,
                    itemBuilder: (BuildContext context, int topic) {
                      for (var i = 0;
                          i < controller.data[topic].infos!.length;
                          i++) {
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
                                    controller.data[topic].topic!,
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
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              crossAxisSpacing: 30.w,
                              mainAxisSpacing: 30.h,
                              children: List.generate(
                                controller.data[topic].infos!.length,
                                (index) {
                                  return CardWidget(
                                    icon: controller
                                            .data[topic].infos![index].icon ??
                                        'kris.png',
                                    subTitle: controller.data[topic]
                                            .infos![index].subTitle ??
                                        '',
                                    title: controller
                                            .data[topic].infos![index].title ??
                                        '',
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
