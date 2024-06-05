import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/styles.dart';

import 'package:articles/view/custom_widgets/settings/sections/settings_custom_card_list.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_text_with_more.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller/settings_profile_settings_controller.dart';
import '../../../../core/constants/shared_prefrences.dart';
import '../../../../data/static/static.dart';
import 'widgets/settings_search_item_card.dart';
import 'widgets/settings_profile_down_section.dart';

class SettingsProfileSettingsScreen extends StatelessWidget {
  const SettingsProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsProfileSettingsController controller =
        Get.put(SettingsProfileSettingsController());
    return GetBuilder<SettingsProfileSettingsController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: SearchBar(
              onChanged: (val) async {
                controller.checkSearch(val);

                controller.latestSearches =
                    await SharedPrefsUtil.getRecentSearchesLike(val);
                await SharedPrefsUtil.saveToRecentSearches(val);
              },
              onTap: () async {
                await SharedPrefsUtil.saveToRecentSearches(
                    controller.searchController!.text);
              },
              elevation: WidgetStateProperty.all(0),
              backgroundColor:
                  WidgetStateProperty.all(AppColors.primaryBackGroundColor),
              leading: const Icon(Icons.search_outlined),
              controller: controller.searchController,
            ),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: SingleChildScrollView(
                    child: controller.isSearch
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('عمليات البحث الأخيرة'),
                                  const Spacer(),
                                  InkWell(
                                      onTap: () async {
                                        await SharedPrefsUtil
                                            .clearLatestSearches();
                                      },
                                      child: const Text('حذف'))
                                ],
                              ),
                              SettingsSearchItemCardList(
                                onTap: (index) async {
                                  String searchItem =
                                      controller.latestSearches[index];
                                  await SharedPrefsUtil.clearSearchItem(
                                      searchItem);
                                  controller.latestSearches.removeAt(index);
                                  controller.update();
                                },
                                latestSearchs: controller.latestSearches,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              CustomTextWithMore(
                                title: 'الإعدادات',
                                changeStyle: true,
                                style: titleMedium32,
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              CustomMediumTitle(
                                text: 'عام',
                                changeStyle: true,
                                style: displayLarge64.copyWith(
                                    fontWeight: FontWeight.w100, fontSize: 40),
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
                                style: displayLarge64.copyWith(
                                    fontWeight: FontWeight.w100, fontSize: 40),
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
                          ))),
          ),
        ),
      );
    });
  }
}
