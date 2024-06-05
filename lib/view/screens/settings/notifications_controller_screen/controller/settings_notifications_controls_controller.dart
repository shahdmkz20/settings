import 'package:articles/data/static/static.dart';

import 'package:get/get.dart';

abstract class SettingsNotificationsControlsControllerABS
    extends GetxController {
  toggle(int index);
  late List<List<dynamic>> notiList;
}

class SettingsNotificationsControlsController
    extends SettingsNotificationsControlsControllerABS {
  bool trend = false;
  bool recommends = false;
  bool boadcast = false;
  bool warnings = false;
  List<bool> switches = [false, false, false, false];

  @override
  // TODO: implement notiList
  List<List> get notiList => notificationsList;
  @override
  toggle(int index) {
    switch (index) {
      case 0:
        switches[0] = !switches[0];
        update();
        break;
      case 1:
        switches[1] = !switches[1];
        update();
        break;
      case 2:
        switches[2] = !switches[2];
        update();
        break;
      case 3:
        switches[3] = !switches[3];
        update();
        break;
    }
  }
}
