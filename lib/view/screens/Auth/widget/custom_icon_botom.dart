// ignore_for_file: camel_case_types, must_be_immutable

import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';

class customIconBottom extends StatelessWidget {
  customIconBottom({super.key, required this.icon, this.onPressed});
  IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: CircleAvatar(
        backgroundColor: AppColors.colorTex1,
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: AppColors.primaryBackGroundColor,
            )),
      ),
    );
  }
}
