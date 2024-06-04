import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/sections/settings_sections.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/text/custom_text_with_more.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/settings/settings_profile_settings_controller.dart';
import '../../../data/static/static.dart';
import '../../custom_widgets/settings/sections/settings_profile_down_section.dart';

class SettingsProfileSettingsScreen extends StatelessWidget {
  const SettingsProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsProfileSettingsController controller =
        Get.put(SettingsProfileSettingsController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Defaultscreens(
          haveSearch: true,
          haveImage: true,
          onTap: () {
            Get.back();
          },
          child: SingleChildScrollView(
            child: GetBuilder<SettingsProfileSettingsController>(
                builder: (controller) {
              return Column(
                children: [
                  CustomTextWithMore(
                    title: 'الإعدادات',
                    changeStyle: true,
                    style: Theme.of(context).textTheme.titleMedium!,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  CustomMediumTitle(
                    text: 'عام',
                    changeStyle: true,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 40),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomCardList(
                      onTap: (index) {
                        controller.goToPage(index);
                      },
                      list: settingsGeneralList),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomMediumTitle(
                    text: 'التطبيق',
                    changeStyle: true,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 40),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomCardList(
                    list: settingsAppList,
                    onTap: (index) {
                      controller.goToPage2(index);
                    },
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  SettingsProfileDownSection(
                    onTap: () {
                      controller.showSignOutDialogg(context);
                    },
                    text: 'تسجيل الخروج',
                    iconOrImage: true,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  SettingsProfileDownSection(
                    onTap: () {
                      controller.showDeleteDialogg(context);
                    },
                    text: 'حذف الحساب',
                    iconOrImage: false,
                  ),
                ],
              );
            }),
          )),
    );
  }
}
