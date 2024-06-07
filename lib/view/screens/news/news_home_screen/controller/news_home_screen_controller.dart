import 'package:articles/view/screens/settings/saveds_screen/controller/settings_saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../model/settings/userlist_model.dart';
import '../../../../custom_widgets/settings/dialog/custom_dialog.dart';

abstract class NewsHomeScreenControllerABS extends SettingsSavedControllerABS {}

class NewsHomeScreenController extends NewsHomeScreenControllerABS {
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

  @override
  addItem(String itemName) {
    final int newId = userMenuList.length + 1;
    final newUser = UserlistModel(listId: newId, title: itemName);
    userMenuList.add(newUser);
    update();
  }

  @override
  goToScreen(int index) {
    // TODO: implement goToScreen
    throw UnimplementedError();
  }

  @override
  searchForItem() {
    // TODO: implement searchForItem
    throw UnimplementedError();
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
}
