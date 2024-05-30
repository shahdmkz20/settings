import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "ابحث",
        hintStyle: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: AppColors.colorIcon.withOpacity(0.7)),
        prefixIcon: Icon(
          Icons.search_outlined,
          color: AppColors.colorIcon.withOpacity(0.7),
        ),
      ),
    );
  }
}
