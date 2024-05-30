import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;

  void init(BuildContext context) {
    screenWidth = Get.width;
    screenHeight = Get.height;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}
