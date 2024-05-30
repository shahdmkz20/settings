import 'package:articles/model/settings/person_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/settings/settings_sections.dart';
import 'settings_profile_bio.dart';
import '../cards/settings_sections_card.dart';

class SettingsSectionsPage extends StatelessWidget {
  final List<SettingsSectionModel> sections;
  final Person person;
  const SettingsSectionsPage(
      {super.key, required this.sections, required this.person});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: Column(
        children: [
          SettingsProfileBio(
            person: person,
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView.builder(
                itemCount: sections.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SettingsSectionsCard(
                    index: index,
                    sections: sections,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
