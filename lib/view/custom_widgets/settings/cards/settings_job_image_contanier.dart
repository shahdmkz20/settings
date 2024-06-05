import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';

class SettingsImageContainerWithStack extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final bool withBottomMargin;
  const SettingsImageContainerWithStack(
      {super.key,
      required this.imageUrl,
      this.radius = 15,
      this.withBottomMargin = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: withBottomMargin
              ? const EdgeInsets.only(bottom: 15)
              : const EdgeInsets.all(0),
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
            color: AppColors.textGreyColor,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: SvgPicture.asset(
              color: AppColors.textGreyColor,
              width: Get.width * 0.05,
              AppImages.forwardArrow),
        )
      ],
    );
  }
}
