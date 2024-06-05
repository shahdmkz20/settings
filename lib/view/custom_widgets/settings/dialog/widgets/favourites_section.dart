import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import 'custom_textformfield.dart';

class FavouritesSection extends StatelessWidget {
  final TextEditingController controller;
  const FavouritesSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.textGreyColor),
              child: const Icon(
                Icons.favorite_outline,
                color: AppColors.primaryBackGroundColor,
              )),
          Expanded(
            child: CustomDialogTextformfield(
                controller: controller, hintText: "اسم القائمة"),
          )
        ],
      ),
    );
  }
}
