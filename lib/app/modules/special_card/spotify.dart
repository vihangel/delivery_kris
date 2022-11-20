import 'package:delivery_kris/app/data/models/story/story_icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;
import '../../shared/resources/colors.dart';
import '../../shared/resources/text_style.dart';
import '../../shared/widget/cards/card_widget.dart';

class SpotifyEspecial extends StatelessWidget {
  final StoryIconModel story;
  const SpotifyEspecial({Key? key, required this.story}) : super(key: key);

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
            icon: const Icon(Icons.close, color: ColorsApp.white),
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
                        "Arg 🤪",
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
                field(context,
                    title: 'Excusa Perfecta',
                    subtitle: "Santi Muk",
                    url:
                        "https://open.spotify.com/track/3PCnwBUOHoYmOaNMnHmaZz?si=1ca68dfa6f3349ba"),
                field(context,
                    title: 'Dança para mim',
                    subtitle: "Garbo",
                    url:
                        "https://open.spotify.com/track/0f0x4fmbdNeVTA7Uhraq4l?si=a5f153178fb54edc"),
                field(context,
                    title: 'Espaço-tempo',
                    subtitle: "Garbo",
                    url:
                        "https://open.spotify.com/track/3IswadxRVRwrGIQ9xtUvp2?si=3e61370915224515"),
                field(context,
                    title: 'Espaço sideral',
                    subtitle: "Garbo",
                    url:
                        "https://open.spotify.com/track/7tMqHpessBtw51dhtGPT0Q?si=cb300ec42fbf4c9f"),
                field(context,
                    title: 'Louvre',
                    subtitle: "Santi Muk",
                    url:
                        "https://open.spotify.com/track/6aw79PLeX1Q2sMUYqOuz0A?si=b4d7206571644eda"),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Acho que não preciso falar nada sobre o vicio em Garbo e Santi Muk, né? 😂",
                    style: TextStyles.subTitleCard,
                  ),
                ),
                field(context,
                    title: 'Tudo ou Nada',
                    subtitle: "Nick Cruz",
                    url:
                        "https://open.spotify.com/track/68uXqddWeyoP71ks5VBvUT?si=75ffa08f85304e04"),
                field(context,
                    title: 'Se For pra Tudo Dar Errado',
                    subtitle: "Tópaz",
                    url:
                        "https://open.spotify.com/track/179NUF6b8tzp3Ni2aMGxgU?si=455adada30b948f9"),
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
                        "Outros?",
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
                field(context,
                    title: 'Viva',
                    subtitle: "Zimbra",
                    url:
                        "https://open.spotify.com/track/0UYQFonYbcBNBxeFmtc1Wo?si=ea73439d09d3474e"),
                field(context,
                    title: 'Es por ti',
                    subtitle: "Juanes",
                    url:
                        "https://open.spotify.com/track/3b1IQflSLrgzYQPGFzI9cl?si=9f67a9858d0a42fc"),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Y es por ti que late mi corazón",
                    style: TextStyles.subTitleCard,
                  ),
                ),
                field(context,
                    title: 'Un millón',
                    subtitle: "The Marias",
                    url:
                        "https://open.spotify.com/track/4yZq5QgUhKq0bO6ExHF2a0?si=8c3e586e56cf4ed7"),
                field(context,
                    title: 'Quiero verte hoy',
                    subtitle: "Benjamin, Vanessa",
                    url:
                        "https://open.spotify.com/track/74gjbauuARjux0uNGAPmoA?si=8392de87488c46cd"),
                field(context,
                    title: 'Una noche más',
                    subtitle: "Adrian Bello",
                    url:
                        "https://open.spotify.com/track/6h5Y9eJqzgiunuQICVkQb6?si=d8f6674214b24ee3"),
                field(context,
                    title: 'Lo que tú me das',
                    subtitle: "Juanpalitoschinos",
                    url:
                        "https://open.spotify.com/track/0HU6iAeBwxODFxkiRMTgF1?si=b00613fc3fc64d21"),
                field(context,
                    title: 'Calidez',
                    subtitle: "Ramona(part. Goyo Degano)",
                    url:
                        "https://open.spotify.com/track/7oUw2jK7PTtZqqaG1KNPv3?si=11ae1878ca474c49"),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Cuando estoy contigo no existe nadie más, elevas cada sentido de mi realidad",
                    style: TextStyles.subTitleCard,
                  ),
                ),
                field(context,
                    title: 'Piensa em mí',
                    subtitle: "Dawn Avenue",
                    url:
                        "https://open.spotify.com/track/3BgK9Ftz8Q0lUgcCO4ZOU7?si=f668d2a522924ddf"),
                field(context,
                    title: 'Vámonos de viaje',
                    subtitle: "Bandalos Chinos",
                    url:
                        "https://open.spotify.com/track/6KVK1XO1Xzy7KGfoOockqA?si=b806814ccd5146e7"),
                field(context,
                    title: 'Serotonina',
                    subtitle: "Ferraz",
                    url:
                        "https://open.spotify.com/track/0z6PsOx006lQADQl3gB5YC?si=2656708c0d444275"),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Y es que somos tú y yo, no existe combinación mejor",
                    style: TextStyles.subTitleCard,
                  ),
                ),
                field(context,
                    title: 'NQP(No quiero parar',
                    subtitle: "Dan.co",
                    url:
                        "https://open.spotify.com/track/73WvgO2o37roOx4QPjmYM2?si=0ae16d66f91e418e"),
                field(context,
                    title: 'Nada que decir',
                    subtitle: "Manu Beker",
                    url:
                        "https://open.spotify.com/track/1qPf4Rl5l8QyK2BXsk1CJE?si=818e9841262e4d9b"),
                field(context,
                    title: 'Sos Todo Lo Que Está Bien',
                    subtitle: "Silvestre y La Naranja",
                    url:
                        "https://open.spotify.com/track/4pL01X6Og8L9kJRTB65Hsz?si=6676140f9f004b9a"),
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
    context, {
    title,
    subtitle,
    url,
  }) {
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
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child:
                        Icon(FontAwesomeIcons.spotify, color: ColorsApp.white),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyles.titleCard,
                      ),
                      Text(
                        subtitle,
                        style: TextStyles.subTitleCard,
                        textAlign: TextAlign.left,
                      ),
                    ],
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
