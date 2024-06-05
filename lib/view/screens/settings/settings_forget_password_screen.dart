import 'package:articles/core/functions/validator.dart';
import 'package:articles/view/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settings/settings_forget_password_controller.dart';
import '../../../view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../../view/custom_widgets/text/custom_medium_title.dart';

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
                TextFormField(
                  controller: controller.oldPasswordController,
                  obscureText: controller.isOldPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'كلمة السر القديمة',
                    hintStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w300),
                    prefixIcon: InkWell(
                      onTap: controller.showOldPass,
                      child: controller.isOldPasswordVisible
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                TextFormField(
                  validator: passwordValidator,
                  controller: controller.newPasswordController,
                  obscureText: controller.isNewPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'كلمة السر الجديدة',
                    hintStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w300),
                    prefixIcon: InkWell(
                      onTap: controller.showPass,
                      child: controller.isNewPasswordVisible
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                TextFormField(
                  validator: (val) => confirmPasswordValidator(
                      val!, controller.newPasswordController.text),
                  controller: controller.cofirmPasswordController,
                  obscureText: controller.isConfirmPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'تأكيد كلمة السر',
                    hintStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w300),
                    prefixIcon: InkWell(
                      onTap: controller.showCofirmPass,
                      child: controller.isConfirmPasswordVisible
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                  ),
                ),
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
