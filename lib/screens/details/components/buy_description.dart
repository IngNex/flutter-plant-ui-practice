import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class buttonBuyDescription extends StatelessWidget {
  const buttonBuyDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: nexPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Description",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
