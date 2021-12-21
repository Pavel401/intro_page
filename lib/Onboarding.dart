import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:intro_page/model/Data.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

final data = [
  Items(
    title: "ONLINE SHOPING",
    subtitle: "Shop from any place and any time",
    image: "https://assets9.lottiefiles.com/private_files/lf30_x2lzmtdl.json",
    backgroundColor: Colors.white,
    titleColor: Colors.black,
    subtitleColor: Colors.black,
    //background: "https://assets4.lottiefiles.com/dotlotties/dlf10_6nh2dc7z.lottie",
  ),
  Items(
    title: "BIG BRANDS",
    subtitle: "Buy your favorite cloths from your favorite brands",
    image: "https://assets6.lottiefiles.com/packages/lf20_jei6otjn.json",
    backgroundColor: HexColor("#FF99CA"),
    titleColor: Colors.white,
    subtitleColor: Colors.white,
       // background: "https://assets4.lottiefiles.com/dotlotties/dlf10_6nh2dc7z.lottie",

  ),
  Items(
    title: "BIG DISCOUNTS",
    subtitle: "Get huge discounts on every purchase",
    image: "https://assets3.lottiefiles.com/packages/lf20_ckfcqkad.json",
    backgroundColor: HexColor("#013BCA"),
    titleColor: Colors.white,
    subtitleColor: Colors.white,
        //background: "https://assets4.lottiefiles.com/dotlotties/dlf10_6nh2dc7z.lottie",

  ),//This is sudeeps contribution
  Items(
    title: "FAST SHIPING",
    subtitle: "Fast and safe shiping accross globe",
    image: "https://assets3.lottiefiles.com/packages/lf20_ckfcqkad.json",
    backgroundColor: HexColor("#F99E4C"),
    titleColor: Colors.white,
    subtitleColor: Colors.white,
       // background: "https://assets4.lottiefiles.com/dotlotties/dlf10_6nh2dc7z.lottie",

  ),
];

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return ConcentricPageView(
      colors: data.map((e) => e.backgroundColor).toList(),
      itemCount: data.length, // null = infinity
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (int index, double value) {
        return Item_holder(data: data[index]);
      },
    );
  }
}

class Item_holder extends StatelessWidget {
  const Item_holder({
    required this.data,
    Key? key,
  }) : super(key: key);

  final Items data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
         // Lottie.network(data.background),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Skip",
                        style: TextStyle(
                            color: data.titleColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                const Spacer(flex: 3),
                Flexible(
                  flex: 20,
                  child: Lottie.network(data.image),
                ),
                const Spacer(flex: 1),
                Text(
                  data.title,
                  style: TextStyle(
                      fontSize: 23,
                      color: data.titleColor,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(flex: 1),
                Text(
                  data.subtitle,
                  style: TextStyle(
                      fontSize: 20,
                      color: data.subtitleColor,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
                const Spacer(flex: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
