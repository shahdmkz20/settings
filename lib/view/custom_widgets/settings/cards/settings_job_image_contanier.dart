import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';

class SettingsImageContainerWithStack extends StatelessWidget {
  final String imageUrl;
  final double radius;
  const SettingsImageContainerWithStack(
      {super.key, required this.imageUrl, this.radius = 15});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          height: Get.height * 0.3,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius))),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: Icon(
            Icons.star_outline,
            color: AppColors.primaryCardColor,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: SvgPicture.asset(
              color: AppColors.primaryCardColor,
              width: Get.width * 0.05,
              ImageAssets.forwardArrow),
        )
      ],
    );
  }
}
