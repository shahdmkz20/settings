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
      onTap: () {
        Get.back();
      },
      child: GetBuilder<SettingsForgetPasswordController>(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              CustomMediumTitle(
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
                  hintStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  prefixIcon: InkWell(
                    onTap: controller.showOldPass,
                    child: controller.isOldPasswordVisible
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              TextFormField(
                controller: controller.newPasswordController,
                obscureText: controller.isNewPasswordVisible,
                decoration: InputDecoration(
                  hintText: 'كلمة السر الجديدة',
                  hintStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  prefixIcon: InkWell(
                    onTap: controller.showPass,
                    child: controller.isNewPasswordVisible
                        ? Icon(Icons.visibility_outlined)
                        : Icon(Icons.visibility_off_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              TextFormField(
                controller: controller.cofirmPasswordController,
                obscureText: controller.isConfirmPasswordVisible,
                decoration: InputDecoration(
                  hintText: 'تأكيد كلمة السر',
                  hintStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  prefixIcon: InkWell(
                    onTap: controller.showCofirmPass,
                    child: controller.isConfirmPasswordVisible
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}