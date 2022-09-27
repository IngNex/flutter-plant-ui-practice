import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';
import 'package:front_plant_app_flutter_ui/screens/components/header_with_seachbox.dart';
import 'package:front_plant_app_flutter_ui/screens/components/recomendes_cards.dart';
import 'package:front_plant_app_flutter_ui/screens/components/title_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSeachBox(size: size),
          TitleWithBtn(title: "Recommeded", press: () {}),
          RecomendesCards(),
          TitleWithBtn(title: "Featured", press: () {}),
          FeaturesProdoductCard(size)
        ],
      ),
    );
  }

  Container FeaturesProdoductCard(Size size) {
    return Container(
      margin: EdgeInsets.only(
          left: nexDefaultPadding,
          top: nexDefaultPadding / 2,
          bottom: nexDefaultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage('assets/images/bottom_img_1.png'))),
    );
  }
}
