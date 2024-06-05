import 'dart:async';

import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/images.dart';
import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBackGroundColor,
        body: SafeArea(
          child: Center(
            child: SvgPicture.asset(AppImages.imageLogo),
          ),
        ));
  }
}
