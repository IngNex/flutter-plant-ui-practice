import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';
import 'package:front_plant_app_flutter_ui/screens/details/components/icon_container.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: nexDefaultPadding),
          child: SizedBox(
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
                            icon:
                                SvgPicture.asset('assets/icons/back_arrow.svg'),
                          ),
                        ),
                        Spacer(),
                        iconContainer(svgPicture: 'assets/icons/sun.svg'),
                        iconContainer(svgPicture: 'assets/icons/icon_2.svg'),
                        iconContainer(svgPicture: 'assets/icons/icon_3.svg'),
                        iconContainer(svgPicture: 'assets/icons/icon_4.svg'),
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
          ),
        )
      ],
    );
  }
}
