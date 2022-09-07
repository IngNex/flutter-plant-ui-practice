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
        ],
      ),
    );
  }
}
