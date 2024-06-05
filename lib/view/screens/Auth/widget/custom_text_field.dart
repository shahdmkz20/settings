// ignore_for_file: use_super_parameters, must_be_immutable

import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final Widget? icon;
  final String hintText;
  final bool? obscureText;
  final TextEditingController controller;
  final String? Function(String? value) validator;
  void Function(String?)? onSaved;

  // ignore: non_constant_identifier_names
  CustomTextField(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.controller,
      required this.validator,
      this.obscureText,
      void Function(String?)? onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        onSaved: onSaved,
        controller: controller,
        validator: validator,
        obscureText: obscureText ?? false,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: styleRegular16,
          suffixIcon: icon,
          iconColor: AppColors.colorIcon,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                // color: AppColor.myBlack, // Set unfocused underline color
                ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                //    color: AppColor.myOrange, // Set focused underline color
                ),
          ),
        ),
        //  cursorColor: AppColor.myOrange,
      ),
    );
  }
}
