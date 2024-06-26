import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/settings_records_controller.dart';
import 'widgets/settings_records_card.dart';
import 'widgets/select_all_checkbox.dart';
import 'widgets/textwith_icon.dart';

class SettingsRecordsScreen extends StatelessWidget {
  const SettingsRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsRecordsController controller = Get.put(SettingsRecordsController());
    return Defaultscreens(
        child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: GetBuilder<SettingsRecordsController>(builder: (controller) {
        return Column(
          children: [
            const CustomMediumTitle(
              text: "السجلات",
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            RecordsUpperOptions(),
            SizedBox(
              height: Get.height * 0.03,
            ),
            SelectAllCheckbox(
              onChanged: (val) {
                controller.onChanged(val);
              },
              value: controller.isChecked,
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            SizedBox(height: Get.height * 0.35, child: const RecordsList()),
            const CustomMediumTitle(
              text: "20-5-2024",
            ),
            SizedBox(height: Get.height * 0.2, child: const RecordsList()),
          ],
        );
      }),
    ));
  }
}
