import 'package:articles/view/screens/settings/home_screen/controller/settings_controller.dart';

import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../custom_widgets/settings/sections/settings_profile_bio.dart';
import '../../../custom_widgets/settings/sections/settings_custom_card_list.dart';

class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = SettingsController();
    return Defaultscreens(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsProfileBio(
              person: controller.personModel,
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            CustomCardList(
                list: controller.settingsSection,
                onTap: (index) {
                  controller.goToPage(index);
                })
          ],
        ),
      ),
    );
  }
}
