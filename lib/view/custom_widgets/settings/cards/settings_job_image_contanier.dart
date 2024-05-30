import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';

class SettingsJobImageContanier extends StatelessWidget {
  final String imageUrl;
  const SettingsJobImageContanier({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          height: Get.height * 0.3,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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
