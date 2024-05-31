import 'package:articles/data/static/static.dart';
import 'package:get/get.dart';

abstract class SettingsAdvertismentControllerABS extends GetxController {
  late String selectedVal;
  late List<String> dropDownMenuItems;
  onChanged(val);
}

class SettingsAdvertismentController extends SettingsAdvertismentControllerABS {
  @override
  // TODO: implement dropDownMenuItems
  List<String> get dropDownMenuItems => super.dropDownMenuItems = advList;
  @override
  void onInit() {
    selectedVal = "";
    super.onInit();
  }

  @override
  onChanged(val) {
    selectedVal = val;
    update();
  }
}
