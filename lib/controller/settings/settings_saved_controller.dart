import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SettingsSavedControllerABS extends GetxController {
  late TextEditingController searchController;
  searchForItem();
}

class SettingsSavedController extends SettingsSavedControllerABS {
  @override
  searchForItem() {}
}
