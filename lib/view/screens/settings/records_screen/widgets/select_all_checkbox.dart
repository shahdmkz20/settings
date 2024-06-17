import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';

class SelectAllCheckbox extends StatelessWidget {
  final bool? value;
  final void Function(bool?)? onChanged;
  const SelectAllCheckbox({super.key, this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            side: const BorderSide(color: AppColors.colorIcon),
            checkColor: Colors.white,
            value: value,
            onChanged: (val) {
              onChanged!(val);
            }),
        SizedBox(width: Get.width * 0.02),
        Text('تحديد الجميع'),
      ],
    );
  }
}
