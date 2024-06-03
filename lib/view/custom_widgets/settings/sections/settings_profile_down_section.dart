import 'package:flutter/material.dart';
// Make sure to import necessary packages for SvgPicture and Get
import 'package:flutter_svg/flutter_svg.dart'; // for SvgPicture
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart'; // for Get.width and Get.height

class SettingsProfileDownSection extends StatelessWidget {
  final String text;
  final bool iconOrImage;
  final IconData icon;
  final void Function()? onTap;
  const SettingsProfileDownSection(
      {super.key,
      required this.text,
      required this.iconOrImage,
      this.icon = Icons.delete_outline,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconOrImage
            ? SvgPicture.asset(
                ImageAssets.powerOff,
                color: AppColors.dangerColor,
                width: Get.width * 0.065,
              )
            : Icon(icon),
        SizedBox(
          width: Get.width * 0.02,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
