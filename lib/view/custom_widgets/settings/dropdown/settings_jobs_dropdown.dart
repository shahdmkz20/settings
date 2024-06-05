import 'package:articles/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors.dart';

class CustomDropDownMenu extends StatelessWidget {
  final List<String> dropDownListValues;
  final bool isSelected;
  final String selectedVal;
  final String defaultListValue;
  final bool leftMaring;
  final bool padding;
  final bool newHeight;
  final void Function(String?)? onChanged;
  const CustomDropDownMenu(
      {super.key,
      required this.dropDownListValues,
      required this.isSelected,
      required this.selectedVal,
      required this.defaultListValue,
      this.onChanged,
      this.leftMaring = true,
      this.padding = true,
      this.newHeight = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftMaring ? Get.width * 0.04 : 0),
      padding: EdgeInsets.symmetric(
          horizontal: padding ? Get.width * 0.02 : Get.width * 0.06,
          vertical: padding ? 0 : Get.height * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.secondryBackGroundColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: Text(
              isSelected ? selectedVal : defaultListValue,
              style: displayMedium18,
            ),
            value: isSelected ? selectedVal : null,
            items: dropDownListValues.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(style: displayMedium18, value),
              );
            }).toList(),
            onChanged: onChanged),
      ),
    );
  }
}
