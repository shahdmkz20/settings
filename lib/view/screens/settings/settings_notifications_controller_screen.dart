import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settings/settings_notifications_controls_controller.dart';
import '../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../custom_widgets/settings/switchtile/custom_switch_tile.dart';

class SettingsNotificationsControlsScreen extends StatelessWidget {
  const SettingsNotificationsControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsNotificationsControlsController controller =
        Get.put(SettingsNotificationsControlsController());
    return Defaultscreens(
      child: GetBuilder<SettingsNotificationsControlsController>(
          builder: (context) {
        return Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: Get.height * 0.03),
                child: const CustomMediumTitle(text: 'إدارة الإشعارات')),
            CustomSwitchListTileList(
              notiList: controller.notiList,
              value: controller.switches,
              onChanged: (value, index) {
                controller.toggle(index);
              },
            )
          ],
        );
      }),
    );
  }
}
