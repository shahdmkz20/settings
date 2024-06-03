import 'package:articles/view/custom_widgets/settings/cards/settings_info_privacy_card.dart';
import 'package:flutter/material.dart';

import '../../../../data/static/static.dart';

class SettingsProfileInfoList extends StatelessWidget {
  final List<String> list;
  final bool general;
  final bool other;
  final IconData icons;
  const SettingsProfileInfoList({
    super.key,
    required this.list,
    this.general = false,
    this.icons = Icons.abc,
    this.other = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return SettingsInfoPrivacyCard(
            icon: other
                ? icons
                : (general
                    ? profileGeneralInfo[index]
                    : profileSettingsIcons[index]),
            privacyMode: 0,
            fieldText: list[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: Colors.grey);
      },
    );
  }
}
