import 'package:articles/view/custom_widgets/settings/dialog/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/routes.dart';
import '../../model/settings/person_model.dart';

abstract class SettingsProfileSettingsControllerABS extends GetxController {
  confirmDelete();
  showDeleteDialogg(BuildContext context);
  showSignOutDialogg(BuildContext context);
  goToPage(int index);
  late TextEditingController password;
  late Person person;
}

class SettingsProfileSettingsController
    extends SettingsProfileSettingsControllerABS {
  @override
  showDeleteDialogg(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomDialog(
            deleteAccount: true,
            firstBtnTap: () {},
            secondBtnTap: () {
              confirmDelete();
            },
            controller: password,
            title: 'هل انت متأكد من حذف حسابك ؟',
            content: "ادخل كلمة السر",
            firstBtnTxt: 'حذف',
          );
        });
  }

  void initData() {
    password = TextEditingController();
    person = Get.arguments['person'];
  }

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    super.dispose();
  }

  @override
  confirmDelete() {
    print('${password.text}   delete');
  }

  @override
  showSignOutDialogg(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomDialog(
            firstBtnTap: () {},
            secondBtnTap: () {
              confirmDelete();
            },
            controller: password,
            title: 'هل انت متأكد من تسجيل الخروج ؟',
            firstBtnTxt: 'تأكيد',
          );
        });
  }

  @override
  goToPage(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.profileInfo, arguments: {'person': person});
        break;
      case 1:
        Get.toNamed(AppRoutes.forgetPassword);
        break;
      case 2:
        Get.toNamed(AppRoutes.notificationControls);
        break;
      case 3:
        Get.toNamed(AppRoutes.hobbies);
    }
  }

  goToPage2(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.textSize);
        break;
      case 1:
        Get.toNamed(AppRoutes.forgetPassword);
        break;
      case 2:
        Get.toNamed(AppRoutes.notificationControls);
        break;
      case 3:
        Get.toNamed(AppRoutes.hobbies);
    }
  }
}
