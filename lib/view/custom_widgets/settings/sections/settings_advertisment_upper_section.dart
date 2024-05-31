import 'package:flutter/material.dart';

import '../dropdown/settings_jobs_dropdown.dart';

class AdvertismentUpperSection extends StatelessWidget {
  final List<String> dropDownListValues;
  final bool isSelected;
  final String selectedVal;
  final Function(String?)? onChanged;
  final String text;
  final void Function()? onTap;
  final double bottomMargin;
  final Icon icon;
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
          SettingsDropDownMenu(
              dropDownListValues: dropDownListValues,
              isSelected: isSelected,
              selectedVal: selectedVal,
              defaultListValue: text,
              onChanged: onChanged),
          InkWell(onTap: onTap, child: icon)
        ],
      ),
    );
  }
}
