import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../constants/routes.dart';
import '../services/services.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    final step = myServices.sharedPreferences.getString("step");

    if (step == "1") {
      return const RouteSettings(name: AppRoutes.splash);
    }
    return null;
  }
}
