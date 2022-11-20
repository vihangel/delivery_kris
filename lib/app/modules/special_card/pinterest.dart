import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:js' as js;
import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

class PinterestEspecial extends StatelessWidget {
  final StoryIconModel story;
  const PinterestEspecial({Key? key, required this.story}) : super(key: key);

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
                        "Trocadilhos em espanhol\nfofos com...",
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
                field(context, 'Bebidas',
                    'https://i.pinimg.com/564x/27/24/7b/27247ba7f39efde252473161d9e3a3f8.jpg'),
                field(context, "Bebidas2",
                    "https://i.pinimg.com/236x/39/ce/40/39ce40ef245f375010c681c744110d93.jpg"),
                field(context, 'Pokemon',
                    'https://i.pinimg.com/236x/8f/5e/fa/8f5efae0692e5cad4c5c54903974b208.jpg'),
                field(context, "Dinossauro",
                    "https://i.pinimg.com/236x/a1/bc/df/a1bcdf11591818da1e8f51732c1f3e23.jpg"),
                field(context, "Pilhas",
                    "https://i.pinimg.com/236x/a3/0a/8f/a30a8f47da16fc4b33fcaefdb19dbcc9.jpg"),
                field(context, "Morcegos",
                    "https://i.pinimg.com/236x/d3/6c/1a/d36c1ace24de08ce164f441b2036b976.jpg"),
                field(context, "Pacman",
                    "https://i.pinimg.com/236x/3c/68/55/3c6855336101fb663bea541921becc04.jpg"),
                field(context, "Meia",
                    "https://i.pinimg.com/236x/09/89/38/09893841fa22f624ee9abcaaf0034040.jpg"),
                field(context, "Nutella",
                    "https://i.pinimg.com/236x/3a/62/8f/3a628fa5f88220f1740a74328deb3039.jpg"),
                field(context, "Incriveis",
                    "https://i.pinimg.com/236x/4b/89/aa/4b89aa15bae1443c6d6a0ea6a063fc23.jpg"),
                field(context, "Wifi",
                    "https://i.pinimg.com/236x/d7/ef/97/d7ef97d2c538f639e27e6ca7080b66a9.jpg"),
                field(context, "Patas arriba",
                    "https://i.pinimg.com/236x/9f/44/7c/9f447cb677439b3d50b365775d8727fe.jpg"),
                field(context, "Tomate",
                    "https://i.pinimg.com/236x/da/ed/23/daed2366c0df60f866f1d6aa99dca56c.jpg"),
                field(context, "Sorvete",
                    "https://i.pinimg.com/236x/d3/d8/fc/d3d8fcbb02f5bdb63bb41779841e6bc8.jpg"),
                field(context, "Carro",
                    'https://i.pinimg.com/236x/47/ec/d9/47ecd9d32d592e89da2e44b7d6845420.jpg'),
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
                        "Trocadilhos fofos com...",
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
                field(context, "Cama",
                    "https://i.pinimg.com/236x/63/3d/f2/633df2b2fd9be14ae5084ef34fca20f0.jpg"),
                field(context, 'Frutas',
                    "https://i.pinimg.com/564x/64/54/4d/64544de55eab0547aad8b42b6c83139f.jpg"),
                field(context, 'Frutas2',
                    "https://i.pinimg.com/236x/14/68/40/1468404772a9a564a2a6cf50f007795b.jpg"),
                field(context, 'Comida',
                    "https://i.pinimg.com/564x/62/b0/05/62b005fee5fd90dbd3edc0d3ad72d9bd.jpg"),
                field(context, 'Elemento da natureza',
                    "https://i.pinimg.com/236x/76/bc/e0/76bce080d9be02a22e44ba49a0d97987.jpg"),
                field(context, "Material?",
                    "https://i.pinimg.com/236x/ab/54/47/ab544717797aac3ceb45603cee564ebb.jpg"),
                field(context, "Animais",
                    "https://i.pinimg.com/236x/fd/e2/49/fde249dd304e783ada0be1612af8132c.jpg"),
                field(context, "Bebidas",
                    "https://i.pinimg.com/236x/96/d2/9a/96d29a093a4dd308d35ee1ccff98f3af.jpg"),
                field(context, "Bebidas2",
                    "https://i.pinimg.com/236x/a4/9b/6e/a49b6e98e041ef685cd20808b312f3f0.jpg"),
                field(context, "Rémedio",
                    "https://i.pinimg.com/236x/5e/2f/7d/5e2f7dfe2fe38c4607b6c55920428f58.jpg"),
                field(context, "Fantasma",
                    "https://i.pinimg.com/736x/ab/8e/49/ab8e498a1369848d26f3dff84d64e438.jpg"),
                field(context, "Fantasma",
                    "https://i.pinimg.com/736x/d4/e3/7c/d4e37c5f9db98dbbdbd885db3cce8b70.jpg"),
                field(context, "Baralho",
                    "https://i.pinimg.com/236x/4e/d4/28/4ed4287e9b16e510a8c28c7b71094621.jpg"),
                field(context, "Avião",
                    "https://i.pinimg.com/236x/e3/b1/6b/e3b16bb9e735c6ada0d0e510f3880165.jpg"),
                field(context, "Meia",
                    "https://i.pinimg.com/236x/0c/a4/6c/0ca46cb65e6f47cfc10296f0c587f0ea.jpg"),
                field(context, "Câmera",
                    "https://i.pinimg.com/236x/58/3b/d8/583bd83896c2fc99894d9205f24ed283.jpg"),
                field(context, "Pontinhos",
                    "https://i.pinimg.com/236x/ca/78/62/ca7862364c91e01c9b68549a184d4c84.jpg"),
                field(context, "Computador",
                    "https://i.pinimg.com/236x/f3/d0/77/f3d0775ba27a10ec8c8f282a94d084a8.jpg"),
                field(context, "Computador2",
                    "https://i.pinimg.com/236x/0e/98/26/0e982649a5adc973dfe16807d657f1b2.jpg"),
                field(context, "Gelo",
                    "https://i.pinimg.com/236x/cf/d0/28/cfd0289d61a8a5b7b39183a9bbb981f8.jpg"),
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
                        "Trocadilhos nerdolas\ne talvez fofos",
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
                field(context, 'Gráficos',
                    "https://i.pinimg.com/236x/42/2e/54/422e542326aea245e06078fd8d802a50.jpg"),
                field(context, "Gráfico2",
                    "https://i.pinimg.com/236x/5b/a1/dd/5ba1dd8cc6c7a5b8beedb524af10bb77.jpg"),
                field(context, "Gráfico3",
                    "https://i.pinimg.com/236x/f4/5d/76/f45d765b155a5e08042ad9cdc3022f28.jpg"),
                field(context, "Gráfico4",
                    "https://i.pinimg.com/236x/8f/4b/e1/8f4be15f0e89c94f134e6bd2fbdfeb01.jpg"),
                field(context, "Melhor gráfico",
                    "https://i.pinimg.com/236x/22/b3/58/22b358e2cc1cfce89869a9d3196706fa.jpg"),
                field(context, "Equação",
                    "https://i.pinimg.com/236x/01/93/a3/0193a3d8c7b7d49a319c25279ed21acb.jpg"),
                field(context, "Trigonometria",
                    "https://i.pinimg.com/236x/92/11/2a/92112a880c56ae7ddd479d1dbf2d5c12.jpg"),
                field(context, "Trigonometria2",
                    "https://i.pinimg.com/236x/04/ff/de/04ffdeb1e0497b296ccc2f8484c503de.jpg"),
                field(context, "Conjunto",
                    "https://i.pinimg.com/236x/bf/05/9e/bf059ef40a67726567668379fe8a177b.jpg"),
                field(context, "Química",
                    "https://i.pinimg.com/236x/01/cf/27/01cf271562f48911fd7de01383050828.jpg"),
                field(context, "Química2",
                    "https://i.pinimg.com/236x/b5/74/8c/b5748c6e5c3537e5a2367bb7d16d498b.jpg"),
                field(context, "Quimica3",
                    "https://i.pinimg.com/236x/a2/27/3d/a2273d2c01573cceafde5d112b968550.jpg"),
                field(context, "Quimica4",
                    "https://i.pinimg.com/236x/89/a2/f1/89a2f1bedc129df99e70fc0671ea6b9c.jpg"),
                field(context, "Física",
                    "https://i.pinimg.com/236x/a8/13/94/a81394eda2e86f1903c7129e5c0a91a8.jpg"),
                field(context, "Fisica2",
                    "https://i.pinimg.com/236x/dd/97/7a/dd977ab4d59c3d79ceb8a9cc470659d0.jpg"),
                field(context, "Pokemon",
                    "https://i.pinimg.com/236x/ee/70/94/ee709472c26da2f6f06b856cbd7045d4.jpg"),
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
    url,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              js.context.callMethod('open', [url]);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: ColorsApp.white, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: ColorsApp.white,
                          border: Border.all(color: ColorsApp.white, width: 1),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyles.titleCard,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
