// ignore_for_file: use_super_parameters

import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorTex1, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(text,
            style: styleBold12.copyWith(
              color: AppColors.primaryBackGroundColor,
            )),
      ),
    );
  }
}
