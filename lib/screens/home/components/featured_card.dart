import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class FeaturedObject extends StatelessWidget {
  const FeaturedObject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeatureCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
          FeatureCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({Key? key, required this.image, required this.press})
      : super(key: key);
  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        margin: EdgeInsets.only(
            left: nexDefaultPadding,
            top: nexDefaultPadding / 2,
            bottom: nexDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
