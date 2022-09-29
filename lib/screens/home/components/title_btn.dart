import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class TitleWithBtn extends StatelessWidget {
  const TitleWithBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: nexDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWitchCustomUnderLine(text: title),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: nexPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () => press,
            child: Text(
              "Mas",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWitchCustomUnderLine extends StatelessWidget {
  final String text;

  const TitleWitchCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: nexDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: nexDefaultPadding / 4),
              height: 7,
              color: nexPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
