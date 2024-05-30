import 'package:articles/controller/settings/settings_controller.dart';
import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/settings/sections/settings_profile_bio.dart';
import '../../custom_widgets/settings/sections/settings_sections.dart';

class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = SettingsController();
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: SettingsAppbar(
              onTap: () {
                Get.back();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsProfileBio(
                    person: controller.person,
                  ),
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  SettingsSectionsPage(
                    sections: controller.settingsSection,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
