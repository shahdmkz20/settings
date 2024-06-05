import 'package:articles/view/screens/settings/news_screen/controller/settings_news_controller.dart';
import 'package:articles/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabsNames;
  const CustomTabBar({
    super.key,
    required this.tabsNames,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsNewsController controller = Get.put(SettingsNewsController());
    return GetBuilder<SettingsNewsController>(builder: (controller) {
      return Container(
        margin: EdgeInsets.only(bottom: Get.height * 0.03),
        height: Get.height * 0.03,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabsNames.length,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInQuad,
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: controller.selected == index
                        ? AppColors.colorOrange
                        : Colors.transparent,
                  ),
                ),
              ),
              child: InkWell(
                onTap: () {
                  controller.categoryChanged(index);
                },
                child: Text(tabsNames[index],
                    style: controller.selected == index
                        ? titleSmall16
                        : displayMedium18),
              ),
            );
          },
        ),
      );
    });
  }
}
