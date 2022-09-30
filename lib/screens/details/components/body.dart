import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';
import 'package:front_plant_app_flutter_ui/screens/details/components/icon_container.dart';
import 'package:front_plant_app_flutter_ui/screens/details/components/image_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
