// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'custom_icon_botom.dart';

class CustomSocialIcons extends StatelessWidget {
  Function()? onPressFace;
  Function()? onPressGoog;
  Function()? onPressLink;
  CustomSocialIcons(
      {super.key, this.onPressFace, this.onPressGoog, this.onPressLink});

  @override
  Widget build(BuildContext context) {
    Function()? onPress = onPressFace;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customIconBottom(
          onPressed: onPress,
          icon: FontAwesomeIcons.facebookF,
        ),
        SizedBox(width: Get.width * 0.1),
        customIconBottom(
          onPressed: onPress,
          icon: FontAwesomeIcons.google,
        ),
        SizedBox(width: Get.width * 0.1),
        customIconBottom(
          onPressed: onPress,
          icon: FontAwesomeIcons.linkedinIn,
        ),
      ],
    );
  }
}
