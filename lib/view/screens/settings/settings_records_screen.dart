import 'package:articles/core/constants/colors.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settings/settings_records_controller.dart';
import '../../custom_widgets/settings/records_widgets.dart/select_all_checkbox.dart';
import '../../custom_widgets/settings/records_widgets.dart/textwith_icon.dart';

class SettingsRecordsScreen extends StatelessWidget {
  const SettingsRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsRecordsController controller = Get.put(SettingsRecordsController());
    return Defaultscreens(
        onTap: () {
          Get.back();
        },
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: GetBuilder<SettingsRecordsController>(builder: (controller) {
              return Column(
                children: [
                  const CustomMediumTitle(
                    text: "السجلات",
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  const RecordsUpperOptions(),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  const SelectAllCheckbox()
                ],
              );
            }),
          ),
        ));
  }
}
