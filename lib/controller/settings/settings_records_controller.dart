import 'package:get/get.dart';

class SettingsRecordsController extends GetxController {
  bool isChecked = false;

  onChanged(val) {
    isChecked = val;
    update();
  }
}
