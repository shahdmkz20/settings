// ignore_for_file: unused_local_variable, invalid_use_of_protected_member
import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../../../../core/services/services.dart';

class RegisterController extends GetxController {
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

  final nameValidator = MultiValidator([
    RequiredValidator(errorText: 'Name is required'),
    MinLengthValidator(8, errorText: 'Name must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Name must have at least one special character')
  ]);

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    PatternValidator(r'(@)', errorText: 'Email must have "@" character'),
    PatternValidator('.com', errorText: 'Email must have ".com"'),
  ]);

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
    if (formState.currentState!.validate()) {
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      String confirmPassword = conPasswordController.text;
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
        .sharedPrefeerence
        .setString("UserName", nameController.text);
    Get.find<MyServices>()
        .sharedPrefeerence
        .setString("Email", emailController.text);
    Get.find<MyServices>()
        .sharedPrefeerence
        .setString("Password", passwordController.text);
  }
}
