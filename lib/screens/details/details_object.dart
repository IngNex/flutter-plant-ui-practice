import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/screens/details/components/body.dart';

class DetailsObject extends StatelessWidget {
  const DetailsObject(
      {super.key,
      required this.titleGlobal,
      required this.countryGlobal,
      required this.imgGlobal,
      required this.priceGlobal});
  final String titleGlobal, countryGlobal, imgGlobal;
  final int priceGlobal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        titleB: titleGlobal,
        countryB: countryGlobal,
        priceB: priceGlobal,
        imgB: imgGlobal,
      ),
    );
  }
}
