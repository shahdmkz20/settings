import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SettingsSavedControllerABS extends GetxController {
  late TextEditingController searchController;
  searchForItem();
  goToScreen(int index);
}

class SettingsSavedController extends SettingsSavedControllerABS {
  @override
  searchForItem() {}

  @override
  goToScreen(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.news);
    }
  }
}
