import 'package:articles/core/constants/routes.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  toChange() {
    Get.offNamed(AppRoutes.change);
    Get.delete<VerifyController>();
  }

  toResend() {}

  void toBack() {
    Get.offNamed(AppRoutes.login);
    Get.delete<VerifyController>();
  }
}
