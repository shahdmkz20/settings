import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/sections/settings_sections.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/text/custom_text_with_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../data/static/static.dart';
import '../../custom_widgets/settings/sections/settings_profile_down_section.dart';

class SettingsProfileSettingsScreen extends StatelessWidget {
  const SettingsProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Defaultscreens(
          haveSearch: true,
          haveImage: true,
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
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
                  SizedBox(
                      height: Get.height * 0.27,
                      child: CustomCardList(list: settingsGeneralList)),
                  SizedBox(
                    height: Get.height * 0.03,
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
                  SizedBox(
                      height: Get.height * 0.17,
                      child: CustomCardList(list: settingsAppList)),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  const SettingsProfileDownSection(
                    text: 'تسجيل الخروج',
                    iconOrImage: true,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const SettingsProfileDownSection(
                    text: 'حذف الحساب',
                    iconOrImage: false,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
