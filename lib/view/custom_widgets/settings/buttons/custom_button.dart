import 'package:articles/core/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.secondryBackGroundColor),
        child:
            Text(text, textAlign: TextAlign.center, style: whitebodyMedium32),
      ),
    );
  }
}
