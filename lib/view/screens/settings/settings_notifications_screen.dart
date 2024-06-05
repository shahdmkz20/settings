import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settings/settings_notifications_controller.dart';
import '../../custom_widgets/settings/cards/settings_custom_notifications_list.dart';

class SettingsNotificationsScreen extends StatelessWidget {
  const SettingsNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsNotificationsController controller =
        Get.put(SettingsNotificationsController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Defaultscreens(
        haveImage: true,
        notiIcon: true,
        haveSearch: true,
        child: SingleChildScrollView(
          child: GetBuilder<SettingsNotificationsController>(
              builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomMediumTitle(text: 'الإشعارات'),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: Text(
                    'جديد',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                SettingsCustomNotificationsList(
                  onTap: (index) {},
                  notificationModelList: controller.todayNotificationList,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: Text(
                    'الأمس',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                SettingsCustomNotificationsList(
                  onTap: (index) {},
                  notificationModelList: controller.yesterdayNotificationList,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: Text(
                    'منذ مدة',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                SettingsCustomNotificationsList(
                  onTap: (index) {},
                  notificationModelList: controller.oldNotificationList,
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
