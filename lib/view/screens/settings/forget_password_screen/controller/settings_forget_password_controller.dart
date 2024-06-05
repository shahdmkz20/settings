import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/settings/dialog/custom_dialog.dart';

abstract class SettingsForgetPasswordControllerABS extends GetxController {
  checkPassword();
  showOldPass();
  showPass();
  showCofirmPass();
  changePassword();
  GlobalKey<FormState> formStateKey = GlobalKey<FormState>();
  late TextEditingController oldPasswordController;
  late TextEditingController cofirmPasswordController;
  late TextEditingController newPasswordController;
}

class SettingsForgetPasswordController
    extends SettingsForgetPasswordControllerABS {
  var isOldPasswordVisible = false;
  var isConfirmPasswordVisible = false;
  var isNewPasswordVisible = false;

  @override
  checkPassword() {}

  @override
  void onInit() {
    oldPasswordController = TextEditingController();
    cofirmPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    oldPasswordController.dispose();
    cofirmPasswordController.dispose();
    super.dispose();
  }

  @override
  showPass() {
    isNewPasswordVisible = !isNewPasswordVisible;

    update();
  }

  @override
  showCofirmPass() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    update();
  }

  @override
  showOldPass() {
    isOldPasswordVisible = !isOldPasswordVisible;
    update();
  }

  @override
  changePassword() {
    var formData = formStateKey.currentState;
    if (formData!.validate()) {
      print('password changed succefully');
      showDialog(
          context: Get.context!,
          builder: (context) {
            return CustomDialog(
              justText: true,
              text: 'تم تغيير كلمة السر بنجاح',
            );
          });
    } else {
      print('not working');
    }
  }
}
