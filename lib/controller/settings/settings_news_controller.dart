import 'package:get/get.dart';

abstract class SettingsNewsControllerASB extends GetxController {
  categoryChanged(int index);
}

class SettingsNewsController extends SettingsNewsControllerASB {
  int selected = 0;

  @override
  void categoryChanged(int index) {
    // Update selected with the new index
    selected = index;
    update(); // Notify listeners of the change
  }
}
