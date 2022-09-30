import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class TitlePriceData extends StatelessWidget {
  const TitlePriceData({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: nexDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: TextStyle(
                    color: nexTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    color: nexPrimaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(color: nexPrimaryColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
