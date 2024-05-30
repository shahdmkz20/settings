import 'package:articles/controller/settings/settings_controller.dart';
import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          body: SizedBox(
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SettingsSectionsPage(
                    person: controller.person,
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
