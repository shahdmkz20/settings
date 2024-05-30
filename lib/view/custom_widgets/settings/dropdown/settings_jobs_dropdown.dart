import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors.dart';

class SettingsDropDownMenu extends StatelessWidget {
  final List<String> dropDownListValues;
  final bool isSelected;
  final String selectedVal;
  final String defaultListValue;
  final void Function(String?)? onChanged;
  const SettingsDropDownMenu(
      {super.key,
      required this.dropDownListValues,
      required this.isSelected,
      required this.selectedVal,
      required this.defaultListValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Get.width * 0.04),
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.secondryBackGroundColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: Text(
              isSelected ? selectedVal : defaultListValue,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            value: isSelected ? selectedVal : null,
            items: dropDownListValues.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                    style: Theme.of(context).textTheme.displayMedium, value),
              );
            }).toList(),
            onChanged: onChanged),
      ),
    );
  }
}
