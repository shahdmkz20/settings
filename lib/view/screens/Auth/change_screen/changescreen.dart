// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_sliver_appbar.dart.dart';
import '../widget/custom_text_field.dart';
import 'controller/change_controller.dart';

class ChangeScreen extends StatelessWidget {
  const ChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeController _controller = Get.put(ChangeController());
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          CustomSliverAppbar(
            onPressed: () {
              _controller.toBack();
            },
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.04),
                SvgPicture.asset(AppImages.imageLogo),
                SizedBox(height: Get.height * 0.03),
                Text('تغيير كلمة السر', style: styleRegular24),
                SizedBox(height: Get.height * 0.03),
                Form(
                    key: _controller.formState2,
                    child: Obx(
                      () => Column(
                        children: [
                          CustomTextField(
                              obscureText: !_controller.isPasswordVisible,
                              icon: IconButton(
                                  icon: Icon(
                                    _controller.isPasswordVisible
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  onPressed: () {
                                    _controller.togglePasswordVisibility();
                                  }),
                              hintText: 'كلمة السر الجديدة',
                              controller: _controller.passwordController,
                              validator: _controller.passwordValidator),
                          SizedBox(height: Get.height * 0.04),
                          CustomTextField(
                              obscureText:
                                  !_controller.isConfirmPasswordVisible,
                              icon: IconButton(
                                onPressed: () {
                                  _controller.toggleConfirmPasswordVisibility();
                                },
                                icon: Icon(
                                  _controller.isConfirmPasswordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                              ),
                              hintText: 'تأكيد كلمة السر',
                              controller: _controller.conPasswordController,
                              validator: _controller.conPasswordValidator),
                          SizedBox(height: Get.height * 0.1),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: CustomElevatedButton(
                                text: 'تغيير كلمة السر',
                                onPressed: () {
                                  _controller.toChange();
                                }),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
