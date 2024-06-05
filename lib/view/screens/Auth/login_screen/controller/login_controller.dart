// ignore_for_file: unused_local_variable, invalid_use_of_protected_member, implicit_call_tearoffs
import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/styles.dart';
import '../../widget/custom_text_field.dart';

class LoginController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController emailController;
  late GlobalKey<FormState> formState1;
  late GlobalKey<FormState> formState3;
  final _isPasswordVisible = RxBool(false);

  bool get isPasswordVisible => _isPasswordVisible.value;

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }

  final nameValidator = MultiValidator([
    RequiredValidator(errorText: 'Name is required'),
  ]);

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    PatternValidator(r'(@)', errorText: 'Email must have "@" character'),
    PatternValidator('.com', errorText: 'Email must have ".com"'),
  ]);

  toChange() {
    Get.defaultDialog(
      title: 'X Community',
      content: Form(
        key: formState3,
        child: Column(
          children: [
            const Text('ادخل الايميل للتحقق'),
            CustomTextField(
                icon: const Icon(Icons.mail_outline_rounded),
                hintText: '',
                controller: emailController,
                validator: emailValidator),
          ],
        ),
      ),
      cancel: GestureDetector(
        child: Chip(
          label: Text(
            'إلغاء',
            style: styleRegular12,
          ),
        ),
        onTap: () {
          emailController.clear();
          Get.back();
        },
      ),
      confirm: GestureDetector(
        child: Chip(label: Text('تحقق', style: styleBold12)),
        onTap: () {
          if (formState3.currentState!.validate()) {
            Get.offAllNamed(AppRoutes.verify);
            Get.delete<LoginController>();
          }
        },
      ),
    );
  }

  toHome() {
    submitForm();
  }

  void submitForm() {
    if (formState1.currentState!.validate()) {
      String name = nameController.text;
      String password = passwordController.text;
      //Get.offAllNamed(AppRoute.home);
      Get.delete<LoginController>();
    }
  }

  toRegister() {
    Get.offAllNamed(AppRoutes.register);
    Get.delete<LoginController>();
  }

  toSocial() {
    //Get.offAllNamed(AppRoute.home);
    Get.delete<LoginController>();
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    formState1 = GlobalKey();
    formState3 = GlobalKey();
    super.onInit();
  }

  @override
  void onClose() {
    nameController.clear();
    passwordController.clear();
    emailController.clear();
    super.onClose();
  }
}
