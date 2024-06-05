// ignore_for_file: unused_element, unused_local_variable, implicit_call_tearoffs, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_social_icons.dart';
import '../widget/custom_text_field.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    RegisterController _controller = Get.put(RegisterController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.08),
            SvgPicture.asset(AppImages.imageLogo),
            SizedBox(height: Get.height * 0.04),
            Center(
              child: Text('أنشئ حسابك', style: styleBold24),
            ),
            FormRegScreen(_controller),
          ],
        ),
      ),
    ));
  }

  Form FormRegScreen(RegisterController _controller) {
    return Form(
      key: _controller.formState,
      child: Column(
        children: [
          SizedBox(height: Get.height * 0.03),
          CustomTextField(
            hintText: ' أدخل اسمك',
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
            controller: _controller.nameController,
            validator: _controller.nameValidator,
          ),
          SizedBox(height: Get.height * 0.02),
          CustomTextField(
            icon: const Icon(
              Icons.mail_outline_rounded,
            ),
            hintText: ' أدخل بريدك الالكتروني',
            controller: _controller.emailController,
            validator: _controller.emailValidator,
          ),
          SizedBox(height: Get.height * 0.02),
          Obx(
            () => CustomTextField(
              icon: IconButton(
                icon: Icon(
                  _controller.isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: () {
                  _controller.togglePasswordVisibility();
                },
              ),
              hintText: ' كلمة السر ',
              controller: _controller.passwordController,
              validator: _controller.passwordValidator,
              obscureText: !_controller.isPasswordVisible,
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Obx(
            () => CustomTextField(
              icon: IconButton(
                icon: Icon(_controller.isConfirmPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
                onPressed: () {
                  _controller.toggleConfirmPasswordVisibility();
                },
              ),
              hintText: ' تأكيد كلمة السر',
              controller: _controller.conPasswordController,
              validator: _controller.conPasswordValidator,
              obscureText: _controller.isConfirmPasswordVisible,
            ),
          ),
          SizedBox(height: Get.height * 0.035),
          Center(
            child: Text(
              '* يجب أن تكون كلمة السر أكثر من خمسة أحرف ',
              style: styleRegular12,
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          CustomElevatedButton(
            text: ' إنشاء حساب',
            onPressed: () {
              _controller.toHome();
            },
          ),
          SizedBox(height: Get.height * 0.03),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _controller.toLogin();
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: styleBold12.copyWith(color: AppColors.colorOrange),
                  ),
                ),
                Text(
                  'لديك حساب ؟',
                  style: styleRegular12,
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.04),
          Center(
            child: Text('أو عن طريق', style: styleBold16),
          ),
          SizedBox(height: Get.height * 0.036),
          CustomSocialIcons(onPressFace: () {
            _controller.toSocial();
          }),
          SizedBox(
            height: Get.height * 0.055,
          ),
        ],
      ),
    );
  }
}
