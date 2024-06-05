// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../widget/custom_sliver_appbar.dart.dart';
import '../widget/verify_otp_field.dart';
import 'controller/verigy_controller.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyController _controller = Get.put(VerifyController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              SizedBox(height: Get.height * 0.06),
              SvgPicture.asset(AppImages.imageLogo),
              SizedBox(height: Get.height * 0.04),
              Text('أدخل الكود الذي تم إرساله', style: styleBold24),
              SizedBox(height: Get.height * 0.042),
              VerifyOtpField(controller: _controller),
              SizedBox(height: Get.height * 0.042),
              Center(
                child: GestureDetector(
                  onTap: () {
                    _controller.toResend();
                  },
                  child: Text(
                    "إعادة إرساله",
                    style: styleBold16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
