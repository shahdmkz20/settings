import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';

class CustomDialogButtons extends StatelessWidget {
  final String firstBtnTxt;
  final String sndBtnTxt;
  final void Function()? firstBtnTap;
  final void Function()? secondBtnTap;
  const CustomDialogButtons(
      {super.key,
      required this.firstBtnTxt,
      required this.sndBtnTxt,
      this.firstBtnTap,
      this.secondBtnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: firstBtnTap,
          child: Text(
            firstBtnTxt,
            style: const TextStyle(color: AppColors.primaryBackGroundColor),
          ),
        ),
        SizedBox(
          width: Get.width * 0.1,
        ),
        InkWell(
          onTap: secondBtnTap,
          child: Text(
            sndBtnTxt,
            style: TextStyle(color: AppColors.primaryBackGroundColor),
          ),
        ),
      ],
    );
  }
}
