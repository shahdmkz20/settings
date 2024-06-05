import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';

class CustomSwitchTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool value;
  final void Function(bool)? onChanged;

  const CustomSwitchTile({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      dense: false,
      secondary: Icon(icon),
      activeTrackColor: AppColors.colorOrange,
      inactiveTrackColor: AppColors.colorIcon,
      inactiveThumbColor: AppColors.primaryCardColor,
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }
}

class CustomSwitchListTileList extends StatelessWidget {
  final List<List<dynamic>> notiList;
  final List<bool> value;
  final Function(bool, int)? onChanged;
  const CustomSwitchListTileList(
      {super.key, required this.notiList, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: notiList.length,
        itemBuilder: (context, index) {
          return CustomSwitchTile(
            title: notiList[index][0] as String,
            icon: notiList[index][1] as IconData,
            value: value[index],
            onChanged: (value) {
              onChanged!(value, index);
            },
          );
        });
  }
}
