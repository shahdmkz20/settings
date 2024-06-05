import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPrefeerence;

  Future<MyServices> init() async {
    sharedPrefeerence = await SharedPreferences.getInstance();
    return this;
  }
}

initialSercices() async {
  await Get.putAsync(() => MyServices().init());
}
