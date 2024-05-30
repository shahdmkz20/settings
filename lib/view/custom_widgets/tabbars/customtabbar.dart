import 'package:articles/controller/settings/settings_news_controller.dart';
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
    SettingsNewsController controller = Get.put(SettingsNewsController());
    return GetBuilder<SettingsNewsController>(builder: (controller) {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
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
                        ? AppColors.accent
                        : Colors.transparent,
                  ),
                ),
              ),
              child: InkWell(
                onTap: () {
                  controller.categoryChanged(index);
                },
                child: Text(
                  tabsNames[index],
                  style: controller.selected == index
                      ? Theme.of(context).textTheme.titleSmall
                      : Theme.of(context).textTheme.displayMedium?.copyWith(
                          color:
                              AppColors.defaultTextIconsColor.withOpacity(0.5)),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
