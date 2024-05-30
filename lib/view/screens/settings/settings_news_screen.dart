import 'package:articles/controller/settings/settings_news_controller.dart';
import 'package:articles/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/settings/cards/settings_job_card.dart';
import '../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../custom_widgets/tabbars/customtabbar.dart';

class SettingsNewsScreen extends StatelessWidget {
  const SettingsNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsNewsController controller = Get.put(SettingsNewsController());
    return Defaultscreens(
      onTap: () {
        Get.back();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        width: Get.width,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              CustomTabBar(
                tabsNames: savedCategoriesTab,
              ),
              GetBuilder<SettingsNewsController>(builder: (context) {
                return SizedBox(
                  height: Get.height * 0.85,
                  child: SettingsJobNewsCard(
                    news: true,
                    newsModel: controller.filteredList,
                    onTap: () {
                      controller.share();
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
