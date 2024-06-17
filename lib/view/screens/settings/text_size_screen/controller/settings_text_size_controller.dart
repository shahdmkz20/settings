import 'package:articles/data/static/static.dart';

import 'package:get/get.dart';

abstract class SettingsTextSizeControllerABS extends GetxController {
  late List<String> textSizesList;
  String firstSelected = '';
  late List<bool> selectedValues;
  late List<String> slectedVals;
  late List<String> titles;
}

class SettingsTextSizeController extends SettingsTextSizeControllerABS {
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    titles = dropDownTitles;
    textSizesList = textSizeList;
    selectedValues = List.filled(titles.length, false);
    slectedVals = List.filled(selectedValues.length, "");
  }

  String firstSelectedVal = "";

  onChanged(val, index) {
    switch (index) {
      case 0:
        firstSelected = val!;
        update();
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        slectedVals[index - 1] = val!;
        update;
        break;
    }

    update();
  }
}
