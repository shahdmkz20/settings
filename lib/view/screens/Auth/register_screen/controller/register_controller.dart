// ignore_for_file: unused_local_variable, invalid_use_of_protected_member
import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../core/services/services.dart';

class RegisterController extends GetxController {
  MyServices myServices = Get.find();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController conPasswordController;
  late GlobalKey<FormState> formState;
  final _isPasswordVisible = RxBool(false);
  final _isConfirmPasswordVisible = RxBool(false);

  bool get isPasswordVisible => _isPasswordVisible.value;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible.value;

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible.value = !_isConfirmPasswordVisible.value;
  }

  String? conPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm your Password';
    }
    if (value != passwordController.text) {
      return 'Passwords Does Not match';
    }
    return null;
  }

  void submitForm() {
    if (formState.currentState!.validate()) {
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      String confirmPassword = conPasswordController.text;
      //  myServices.sharedPreferences.setString("step", "1");
      setPrivData();

      //Get.offAllNamed(AppRoute.home);
      Get.delete<RegisterController>();
    }
  }

  toHome() {
    submitForm();
  }

  toLogin() {
    Get.offAllNamed(AppRoutes.login);
    Get.delete<RegisterController>();
  }

  toSocial() {
    //Get.offAllNamed(AppRoute.home);
    Get.delete<RegisterController>();
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    conPasswordController = TextEditingController();
    formState = GlobalKey();
    super.onInit();
  }

  @override
  void onClose() {
    nameController.clear();
    passwordController.clear();
    emailController.clear();
    super.onClose();
  }

  void setPrivData() {
    Get.find<MyServices>()
        .sharedPreferences
        .setString("UserName", nameController.text);
    Get.find<MyServices>()
        .sharedPreferences
        .setString("Email", emailController.text);
    Get.find<MyServices>()
        .sharedPreferences
        .setString("Password", passwordController.text);
  }
}
