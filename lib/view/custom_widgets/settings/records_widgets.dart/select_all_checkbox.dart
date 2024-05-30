import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/settings/settings_records_controller.dart';
import '../../../../core/constants/colors.dart';

class SelectAllCheckbox extends StatelessWidget {
  const SelectAllCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsRecordsController controller = Get.put(SettingsRecordsController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            side: const BorderSide(color: AppColors.colorIcon),
            checkColor: Colors.white,
            value: controller.isChecked,
            onChanged: (val) {
              controller.onChanged(val);
            }),
        SizedBox(width: Get.width * 0.02),
        Text('تحديد الجميع'),
      ],
    );
  }
}
