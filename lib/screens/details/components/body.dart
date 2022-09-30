import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * .8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: nexDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: nexDefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        ),
                      ),
                      Divider(),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: nexPrimaryColor.withOpacity(0.22),
                                offset: Offset(0, 15),
                                blurRadius: 22),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-15, -15),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(50),
                          color: nexBackgroundColor,
                        ),
                        child: SvgPicture.asset('assets/icons/sun.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: nexPrimaryColor.withOpacity(0.29)),
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img.png'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
