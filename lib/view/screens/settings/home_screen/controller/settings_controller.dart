import 'package:articles/core/constants/routes.dart';
import 'package:get/get.dart';

import '../../../../../data/static/static.dart';

import '../../../../../model/settings/person_model.dart';

abstract class SettingsControllerABS extends GetxController {
  late List<dynamic> settingsSection;
  late Person personModel;

  goToPage(int index);
}

class SettingsController extends SettingsControllerABS {
  //settings sections part
  @override
  List<dynamic> get settingsSection => settingsSections;
  @override
  Person get personModel => person;
  @override
  goToPage(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.settingsJobs);
        break;
      case 1:
        Get.toNamed(AppRoutes.saved);
        break;
      case 2:
        Get.toNamed(AppRoutes.hobbies);
        break;
      case 3:
        Get.toNamed(AppRoutes.records);
        break;
      case 4:
        Get.toNamed(AppRoutes.advertisment);
        break;
      case 5:
        Get.toNamed(AppRoutes.settingSettings,
            arguments: {'person': personModel});
        break;
    }
  }
}
