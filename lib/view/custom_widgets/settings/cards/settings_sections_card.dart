import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/settings/settings_controller.dart';
import '../../../../model/settings/settings_sections.dart';

class SettingsSectionsCard extends StatelessWidget {
  final int index;
  final List<SettingsSectionModel> sections;
  const SettingsSectionsCard(
      {super.key, required this.index, required this.sections});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {
          controller.goToPage(index);
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(sections[index].icon),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  sections[index].sectionName,
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
