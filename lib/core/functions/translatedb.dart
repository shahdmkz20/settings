import 'package:get/get.dart';

import '../services/services.dart';

translateDatabase(columnAr, columnEN) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString('lang') == 'ar') {
    return columnAr;
  } else {
    return columnEN;
  }
}
