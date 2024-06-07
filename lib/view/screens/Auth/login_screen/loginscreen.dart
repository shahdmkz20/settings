// ignore_for_file: unused_local_variable, implicit_call_tearoffs, camel_case_types, must_be_immutable, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/functions/validator.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_social_icons.dart';
import '../widget/custom_text_field.dart';
import 'controller/login_controller.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    LoginController _controller = Get.put(LoginController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.08,
            ),
            SvgPicture.asset(AppImages.imageLogo),
            SizedBox(
              height: Get.height * 0.04,
            ),
            FormLogin(_controller),
          ],
        ),
      ),
    ));
  }

  Form FormLogin(LoginController _controller) {
    return Form(
      key: _controller.formState1,
      child: Column(
        children: [
          Center(
            child: Text(
              'أهلا بك',
              style: styleBold24,
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Center(
            child: Text(
              'ادخل حسابك لتسجيل الدخول',
              style: styleRegular24,
            ),
          ),
          SizedBox(height: Get.height * 0.05),
          CustomTextField(
            hintText: ' أدخل حسابك',
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
            controller: _controller.nameController,
            validator: nameValidator,
          ),
          SizedBox(height: Get.height * 0.03),
          Obx(
            () => CustomTextField(
                icon: IconButton(
                  onPressed: () {
                    _controller.togglePasswordVisibility();
                  },
                  icon: Icon(_controller.isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                ),
                hintText: 'كلمة السر',
                controller: _controller.passwordController,
                validator: passwordValidator,
                obscureText: !_controller.isPasswordVisible),
          ),
          SizedBox(height: Get.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  _controller.toChange();
                },
                child: Text('اعادة تعيين', style: styleBold12),
              ),
              SizedBox(width: Get.width * 0.0001),
              Text('هل نسيت كلمة السر؟', style: styleRegular12),
            ],
          ),
          SizedBox(height: Get.height * 0.025),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomElevatedButton(
              text: ' تسجيل الدخول',
              onPressed: () {
                _controller.toHome();
              },
            ),
          ),
          SizedBox(height: Get.height * 0.025),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _controller.toRegister();
                  },
                  child: Text(
                    'إنشاء حساب',
                    style: styleBold12.copyWith(color: AppColors.colorOrange),
                  ),
                ),
                Text('ليس لديك حساب؟ ', style: styleRegular12),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.05),
          Center(
            child: Text('أو عن طريق', style: styleBold16),
          ),
          SizedBox(height: Get.height * 0.022),
          CustomSocialIcons(onPressFace: () {
            _controller.toSocial();
          }),
          SizedBox(
            height: Get.height * 0.06,
          ),
        ],
      ),
    );
  }
}
