import 'package:articles/core/functions/validator.dart';
import 'package:articles/view/custom_widgets/settings/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/settings_forget_password_controller.dart';
import '../../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../../custom_widgets/settings/text/custom_medium_title.dart';
import 'controller/widgets/custom_forget_password_form_field.dart';

class SettingsForgetPassword extends StatelessWidget {
  const SettingsForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsForgetPasswordController controller =
        Get.put(SettingsForgetPasswordController());
    return Defaultscreens(
      child: GetBuilder<SettingsForgetPasswordController>(builder: (context) {
        return SizedBox(
          height: Get.height,
          child: Form(
            key: controller.formStateKey,
            child: Column(
              children: [
                const CustomMediumTitle(
                  text: 'تغيير كلمة السر',
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CustomForgetPasswordFormField(
                    hintText: 'كلمة السر القديمة',
                    controller: controller.oldPasswordController,
                    obscureText: controller.isOldPasswordVisible,
                    onTap: controller.showOldPass,
                    isVisible: controller.isOldPasswordVisible),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CustomForgetPasswordFormField(
                  hintText: 'كلمة السر الجديدة',
                  validator: passwordValidator,
                  controller: controller.newPasswordController,
                  obscureText: controller.isNewPasswordVisible,
                  onTap: controller.showPass,
                  isVisible: controller.isNewPasswordVisible,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomForgetPasswordFormField(
                    hintText: 'تأكيد كلمة السر',
                    validator: (val) => confirmPasswordValidator(
                        val!, controller.newPasswordController.text),
                    controller: controller.cofirmPasswordController,
                    obscureText: controller.isConfirmPasswordVisible,
                    onTap: controller.showCofirmPass,
                    isVisible: controller.isConfirmPasswordVisible),
                Spacer(),
                CustomButton(
                    text: 'تأكيد',
                    onTap: () {
                      controller.changePassword();
                    })
              ],
            ),
          ),
        );
      }),
    );
  }
}
