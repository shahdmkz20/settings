import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class CustomDialogTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomDialogTextformfield(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: AppColors.colorIcon),
      width: Get.width,
      child: TextField(
        controller: controller,
        style: const TextStyle(color: AppColors.primaryBackGroundColor),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            isDense: true,
            border: InputBorder.none,
            hintStyle: whitebodyMedium32,
            hintText: hintText),
      ),
    );
  }
}
