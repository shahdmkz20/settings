import 'package:articles/core/constants/routes.dart';
import 'package:articles/model/settings/settings_sections.dart';
import 'package:articles/model/settings/userlist_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SettingsSavedControllerABS extends GetxController {
  late TextEditingController searchController;
  late List<UserlistModel> usersList;
  searchForItem();
  goToScreen(int index);
}

class SettingsSavedController extends SettingsSavedControllerABS {
  @override
  List<UserlistModel> get usersList => super.usersList = userList;
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
