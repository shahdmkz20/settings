import 'package:articles/view/screens/settings/home_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/static/static.dart';
import '../../../../custom_widgets/settings/dropdown/settings_jobs_dropdown.dart';

class SettingsJobsUpperSection extends StatelessWidget {
  const SettingsJobsUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "اكتشف وظيفتك المناسبة!",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        GetBuilder<SettingsController>(builder: (controller) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: Get.height * 0.02),
              child: Row(
                children: [
                  CustomDropDownMenu(
                    dropDownListValues: jobField,
                    isSelected: controller.selectedJobFieldVal.isNotEmpty,
                    selectedVal: controller.selectedJobFieldVal,
                    defaultListValue: "مجال الوظيفة",
                    onChanged: (val) {
                      controller.onChanged(val, 2);
                      controller.selectedJobField = jobField.indexOf(val!);
                    },
                  ),
                  CustomDropDownMenu(
                    dropDownListValues: jobWorkTime,
                    isSelected: controller.selectedJobWorkTimeVal.isNotEmpty,
                    selectedVal: controller.selectedJobWorkTimeVal,
                    defaultListValue: "نوع الوظيفة",
                    onChanged: (val) {
                      controller.onChanged(val, 1);
                      controller.selectedJobWorkTime =
                          jobWorkTime.indexOf(val!);
                    },
                  ),
                  CustomDropDownMenu(
                    dropDownListValues: jobsType,
                    isSelected: controller.selectedJobTypeVal.isNotEmpty,
                    selectedVal: controller.selectedJobTypeVal,
                    defaultListValue: 'مكان الوظيفة',
                    onChanged: (val) {
                      controller.onChanged(val, 0);
                      controller.selectedJobType = jobsType.indexOf(val!);
                    },
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
