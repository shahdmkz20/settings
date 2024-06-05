import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../verify_screen/controller/verigy_controller.dart';

class VerifyOtpField extends StatelessWidget {
  const VerifyOtpField({
    super.key,
    required VerifyController controller,
  }) : _controller = controller;

  final VerifyController _controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Ensure text starts from left
      child: OtpTextField(
        keyboardType: TextInputType.name,
        obscureText: false,
        numberOfFields: 4,
        fieldWidth: 50,
        focusedBorderColor: AppColors.colorTex1,
        borderColor: AppColors.colorTex1,
        //showFieldAsBox: true,
        onCodeChanged: (String code) {
          _controller.toChange();
        },
        onSubmit: (String verificationCode) {
          _controller.toChange();
        },
      ),
    );
  }
}
