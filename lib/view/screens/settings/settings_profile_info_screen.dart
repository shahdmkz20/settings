import 'package:articles/controller/settings/settings_profile_info_controller.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/settings/sections/settings_profile_bio.dart';
import '../../custom_widgets/settings/sections/settings_profile_info_list.dart';

class SettingsProfileInfoScreen extends StatelessWidget {
  const SettingsProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProfileInfoController controller =
        Get.put(SettingsProfileInfoController());

    return Defaultscreens(
      onTap: () {
        Get.back();
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingsProfileBio(
              person: controller.person,
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: const CustomMediumTitle(text: 'معلومات الاتصال')),
            SettingsProfileInfoList(
              general: false,
              list: controller.personContactInfo,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: const CustomMediumTitle(text: 'معلومات اساسية')),
            SettingsProfileInfoList(
              general: true,
              list: controller.personGeneralInfo,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: const CustomMediumTitle(text: 'العمل')),
            SettingsProfileInfoList(
              other: true,
              icons: Icons.work_outline,
              list: controller.personJobs,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: const CustomMediumTitle(text: 'الدراسة')),
            SettingsProfileInfoList(
              other: true,
              icons: Icons.school_outlined,
              list: controller.personStudies,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: const CustomMediumTitle(text: 'الاقامة')),
            SettingsProfileInfoList(
              other: true,
              icons: Icons.home_outlined,
              list: controller.personPlaces,
            ),
          ],
        ),
      ),
    );
  }
}
