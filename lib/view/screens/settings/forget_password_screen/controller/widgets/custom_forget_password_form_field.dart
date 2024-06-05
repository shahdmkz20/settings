import 'package:flutter/material.dart';

class CustomForgetPasswordFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final void Function()? onTap;
  final bool isVisible;

  const CustomForgetPasswordFormField(
      {super.key,
      this.validator,
      this.controller,
      required this.obscureText,
      this.hintText,
      this.onTap,
      required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        prefixIcon: InkWell(
          onTap: onTap,
          child: isVisible
              ? const Icon(Icons.visibility_off_outlined)
              : const Icon(Icons.visibility_outlined),
        ),
      ),
    );
  }
}
