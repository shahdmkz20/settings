import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/settings/dropdown/settings_jobs_dropdown.dart';

class AdvertismentUpperSection extends StatelessWidget {
  final List<String> dropDownListValues;
  final bool isSelected;
  final String selectedVal;
  final Function(String?)? onChanged;
  final String text;
  final void Function()? onTap;
  final double bottomMargin;
  final IconData icon;
  const AdvertismentUpperSection(
      {super.key,
      required this.dropDownListValues,
      required this.isSelected,
      required this.selectedVal,
      this.onChanged,
      required this.text,
      this.onTap,
      required this.bottomMargin,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDropDownMenu(
              dropDownListValues: dropDownListValues,
              isSelected: isSelected,
              selectedVal: selectedVal,
              defaultListValue: text,
              onChanged: onChanged),
          InkWell(
            onTap: onTap,
            child: Container(
              height: Get.height * 0.04,
              width: Get.height * 0.04,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 15)
              ], color: AppColors.primaryCardColor),
              child: Icon(
                icon,
                color: AppColors.colorIcon.withOpacity(0.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
