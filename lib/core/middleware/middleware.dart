import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../services/services.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    return null;
  }
}
