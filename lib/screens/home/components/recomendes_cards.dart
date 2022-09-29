import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';
import 'package:front_plant_app_flutter_ui/screens/details/details_object.dart';

class RecomendesCards extends StatelessWidget {
  const RecomendesCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedCard(
            image: "assets/images/image_1.png",
            title: "samantha",
            country: "Rusia",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsObject(),
                ),
              );
            },
          ),
          RecomendedCard(
            image: "assets/images/image_2.png",
            title: "angelica",
            country: "Rusia",
            price: 600,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsObject(),
                ),
              );
            },
          ),
          RecomendedCard(
            image: "assets/images/image_3.png",
            title: "Lirias",
            country: "Rusia",
            price: 800,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsObject(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: nexDefaultPadding,
          top: nexDefaultPadding / 2,
          bottom: nexDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          onTap: () => press(),
          child: Container(
            padding: EdgeInsets.all(nexDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: nexPrimaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: nexPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("\$$price",
                    style: const TextStyle(
                        color: nexPrimaryColor, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
