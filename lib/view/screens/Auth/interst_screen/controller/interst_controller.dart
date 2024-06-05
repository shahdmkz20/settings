// ignore_for_file: avoid_print
import 'package:articles/core/constants/routes.dart';
import 'package:get/get.dart';

import '../../../../../data/static/interst_data.dart';

class InterstController extends GetxController {
  final _selectedIndixes = RxList<int>([]);
  final _isPressed = RxBool(false);
  final _allInterests = allInterests.obs;
  final _filteredInterests = allInterests.sublist(0, 16).obs;
  final _showMoreButton = true.obs;
  final _moveNext = false.obs;

  bool get showMoreButton => _showMoreButton.value;
  bool get moveNext => _moveNext.value;
  bool get isPressed => _isPressed.value;
  List<int> get selectedIndices => _selectedIndixes;
  List<String> get filteredInterests => _filteredInterests;

  void toggleSelectedIndex(int index) {
    if (_selectedIndixes.contains(index)) {
      _selectedIndixes.remove(index);
      print(_selectedIndixes);
    } else {
      _selectedIndixes.add(index);
      print(_selectedIndixes);
    }
    if (_selectedIndixes.length >= 3) {
      _moveNext.value = true;
      print(_moveNext);
    } else {
      _moveNext.value = false;
    }

    update();
  }

  void toggleIsSelected() {
    _isPressed.value = !_isPressed.value;
    if (_isPressed.value) {
      _filteredInterests.value = _allInterests;
      _showMoreButton.value = false;
    } else {
      _filteredInterests.value = _allInterests.sublist(0, 16);
      _showMoreButton.value = true;
    }
  }

  void toBack() {
    Get.offNamed(AppRoutes.register);
    Get.delete<InterstController>();
  }

  void toNext() {
    if (_moveNext.value) {
      //Get.offAllNamed(AppRoute.Home);
      Get.delete<InterstController>();
    } else {
      Get.snackbar(
        '',
        'يرجى اختيار ثلاث اهتمامات على الأقل',
      );
    }
  }
}
