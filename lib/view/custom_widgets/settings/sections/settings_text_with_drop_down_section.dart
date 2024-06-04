import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dropdown/settings_jobs_dropdown.dart';

class SettingsTextWithDropDownSection extends StatelessWidget {
  final String text;
  final List<String> dropDownListValues;
  final bool isSelected;
  final String selectedVal;
  final String dropDownDefault;
  final Function(String?)? onChanged;
  const SettingsTextWithDropDownSection(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.selectedVal,
      required this.dropDownListValues,
      required this.dropDownDefault,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text),
        const Spacer(),
        SizedBox(
          height: Get.height * 0.04,
          child: CustomDropDownMenu(
            padding: false,
            leftMaring: false,
            dropDownListValues: dropDownListValues,
            isSelected: isSelected,
            selectedVal: selectedVal,
            defaultListValue: dropDownDefault,
            onChanged: (val) => onChanged,
          ),
        ),
      ],
    );
  }
}
