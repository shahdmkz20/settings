// ignore_for_file: unused_local_variable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/routes.dart';
import '../../../../../core/services/services.dart';

class ChangeController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController conPasswordController;
  late GlobalKey<FormState> formState2;
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

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);

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
    if (formState2.currentState!.validate()) {
      String password = passwordController.text;
      String confirmPassword = conPasswordController.text;
      Get.find<MyServices>()
          .sharedPreferences
          .setString("Password", passwordController.text);
      Get.offAllNamed(AppRoutes.login);
      Get.delete<ChangeController>();
    }
  }

  toBack() {
    Get.offNamed(AppRoutes.verify);
    Get.delete<ChangeController>();
  }

  toChange() {
    submitForm();
  }

  @override
  void onInit() {
    passwordController = TextEditingController();
    conPasswordController = TextEditingController();
    formState2 = GlobalKey();
    super.onInit();
  }

  @override
  void onClose() {
    passwordController.clear();
    conPasswordController.clear();
    super.onClose();
  }
}
