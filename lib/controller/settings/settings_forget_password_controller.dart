import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SettingsForgetPasswordControllerABS extends GetxController {
  checkPassword();
  showOldPass();
  showPass();
  showCofirmPass();
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
}
