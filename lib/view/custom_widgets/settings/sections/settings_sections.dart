import 'package:articles/model/settings/person_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/settings/settings_sections.dart';
import 'settings_profile_bio.dart';
import '../cards/settings_sections_card.dart';

class SettingsSectionsPage extends StatelessWidget {
  final List<SettingsSectionModel> sections;
  final bool savedCat;
  const SettingsSectionsPage(
      {super.key, required this.sections, this.savedCat = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        itemCount: sections.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return savedCat == true && (index == 4 || index == 5)
              ? Container()
              : SettingsSectionsCard(
                  index: index,
                  sections: sections,
                );
        },
      ),
    );
  }
}
