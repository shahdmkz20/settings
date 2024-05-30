import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../custom_widgets/text/custom_medium_title.dart';
import '../../custom_widgets/text/custom_searchbar.dart';

class SettingsSavedScreen extends StatelessWidget {
  const SettingsSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SettingsAppbar(
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchbar(),
              SizedBox(height: Get.height * 0.03),
              const CustomMediumTitle(
                addIcon: true,
                icon: Icon(Icons.add),
                text: 'المحفوظات',
              ),
              SizedBox(height: Get.height * 0.03),
            ],
          ),
        ),
      )),
    );
  }
}
