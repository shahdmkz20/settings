import 'package:articles/model/settings/notification_model.dart';
import 'package:get/get.dart';

abstract class SettingsNotificationsControllerABS extends GetxController {
  late List<NotificationModel> notificationModelList;
  late List<NotificationModel> todayNotificationList;
  late List<NotificationModel> yesterdayNotificationList;
  late List<NotificationModel> oldNotificationList;

  initData();
}

class SettingsNotificationsController
    extends SettingsNotificationsControllerABS {
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  @override
  void initData() {
    notificationModelList = sortAndClassifyNotifications(notiList);
  }

  List<NotificationModel> sortAndClassifyNotifications(
      List<NotificationModel> notifications) {
    notifications
        .sort((a, b) => b.notificationDate.compareTo(a.notificationDate));

    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime yesterday = today.subtract(const Duration(days: 1));

    todayNotificationList = [];
    yesterdayNotificationList = [];
    oldNotificationList = [];

    for (var notification in notifications) {
      DateTime notificationDate = notification.notificationDate;
      DateTime notificationDay = DateTime(
          notificationDate.year, notificationDate.month, notificationDate.day);

      if (notificationDay.isAtSameMomentAs(today)) {
        todayNotificationList.add(notification);
      } else if (notificationDay.isAtSameMomentAs(yesterday)) {
        yesterdayNotificationList.add(notification);
      } else {
        oldNotificationList.add(notification);
      }
    }

    return notifications;
  }
}
