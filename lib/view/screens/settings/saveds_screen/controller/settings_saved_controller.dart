import 'package:articles/core/constants/routes.dart';

import 'package:articles/model/settings/userlist_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/settings/dialog/custom_dialog.dart';

abstract class SettingsSavedControllerABS extends GetxController {
  late TextEditingController searchController;
  late List<UserlistModel> usersList;
  late TextEditingController itemName;
  addItem(String itemName);
  searchForItem();
  goToScreen(int index);
  showDialogg();
}

class SettingsSavedController extends SettingsSavedControllerABS {
  @override
  List<UserlistModel> get usersList => super.usersList = userMenuList;
  @override
  searchForItem() {}

  @override
  goToScreen(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.settingsNews);
    }
  }

  @override
  void onInit() {
    itemName = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    itemName.dispose();
    super.dispose();
  }

  @override
  addItem(String itemName) {
    final int newId = userMenuList.length + 1;
    final newUser = UserlistModel(listId: newId, title: itemName);
    userMenuList.add(newUser);
    update();
  }

  @override
  showDialogg() {
    showDialog(
        context: Get.context!,
        builder: (context) {
          return CustomDialog(
            firstBtnTap: () {
              addItem(itemName.text);
              Get.back();
            },
            controller: itemName,
            title: 'انشئ قائمتك',
            content: '',
            favourites: true,
            firstBtnTxt: 'انشئ',
          );
        });
  }
}
