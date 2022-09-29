import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: nexDefaultPadding * 2,
          right: nexDefaultPadding * 2,
          bottom: nexDefaultPadding),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: nexPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/flower.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/user-icon.svg'),
        ),
      ]),
    );
  }
}
