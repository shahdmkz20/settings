import 'package:articles/core/constants/colors.dart';
import 'package:articles/data/static/static.dart';
import 'package:articles/model/settings/saved_cat_model.dart';
import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../custom_widgets/settings/cards/settings_saved_cat.dart';
import '../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../custom_widgets/settings/sections/settings_sections.dart';
import '../../custom_widgets/text/custom_medium_title.dart';
import '../../custom_widgets/text/custom_searchbar.dart';
import '../../custom_widgets/text/custom_text_with_more.dart';

class SettingsSavedScreen extends StatelessWidget {
  const SettingsSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Defaultscreens(
      onTap: () {
        Get.back();
      },
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomSearchbar(),
              SizedBox(height: Get.height * 0.03),
              const CustomMediumTitle(
                addIcon: true,
                icon: Icon(Icons.add),
                text: 'المحفوظات',
              ),
              SizedBox(height: Get.height * 0.03),
              SettingsSavedCatListView(
                savedCategories: savedCategories,
              ),
              SizedBox(height: Get.height * 0.03),
              const CustomTextWithMore(
                title: 'قوائمك',
                more: true,
              ),
              SizedBox(height: Get.height * 0.03),
              SettingsSectionsPage(
                savedCat: true,
                sections: settingsSections,
              )
            ],
          ),
        ),
      ),
    );
  }
}
