import 'package:articles/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../custom_widgets/tabbars/customtabbar.dart';

class SettingsNewsScreen extends StatelessWidget {
  const SettingsNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Defaultscreens(
        child: Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      width: Get.width,
      child: CustomTabBar(
        //  tabview: Text('here'),
        tabsNames: savedCategoriesTab,
      ),
    ));
  }
}
