import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class iconContainer extends StatelessWidget {
  const iconContainer({Key? key, required this.svgPicture}) : super(key: key);
  final String svgPicture;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * .03),
      padding: EdgeInsets.all(nexDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: nexPrimaryColor.withOpacity(0.22),
              offset: Offset(0, 15),
              blurRadius: 22),
          BoxShadow(
              color: Colors.white, offset: Offset(-15, -15), blurRadius: 20)
        ],
        borderRadius: BorderRadius.circular(50),
        color: nexBackgroundColor,
      ),
      child: SvgPicture.asset(svgPicture),
    );
  }
}
