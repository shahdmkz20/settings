import 'package:articles/view/screens/settings/saveds_screen/controller/settings_saved_controller.dart';
import 'package:articles/data/static/static.dart';
import 'package:articles/model/settings/userlist_model.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'widgets/settings_saved_cat.dart';
import '../../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../../custom_widgets/settings/sections/settings_custom_card_list.dart';
import '../../../custom_widgets/settings/text/custom_medium_title.dart';
import '../../../custom_widgets/settings/text/custom_searchbar.dart';
import '../../../custom_widgets/settings/text/custom_text_with_more.dart';

class SettingsSavedScreen extends StatelessWidget {
  const SettingsSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsSavedController controller = Get.put(SettingsSavedController());
    return Defaultscreens(
      child: GetBuilder<SettingsSavedController>(builder: (controller) {
        return SingleChildScrollView(
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
              CustomTextWithMore(
                onTap: () {
                  controller.showDialogg();
                },
                title: 'قوائمك',
                more: true,
              ),
              SizedBox(height: Get.height * 0.03),
              CustomCardList(
                list: userList,
              )
            ],
          ),
        );
      }),
    );
  }
}
