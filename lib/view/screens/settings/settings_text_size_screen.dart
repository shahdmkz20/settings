import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/dropdown/settings_jobs_dropdown.dart';

import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settings/settings_text_size_controller.dart';
import '../../../data/static/static.dart';

class SettingsTextSizeScreen extends StatelessWidget {
  const SettingsTextSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsTextSizeController controller =
        Get.put(SettingsTextSizeController());
    return Defaultscreens(child: SingleChildScrollView(
      child: GetBuilder<SettingsTextSizeController>(builder: (controller) {
        return Column(
          children: [
            const CustomMediumTitle(text: 'حجم الخط'),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(textDisc),
            ),
            Row(
              children: [
                Text('كيف تريد حجم الخط في تطبيقك ؟'),
                Spacer(),
                SizedBox(
                  height: Get.height * 0.04,
                  child: CustomDropDownMenu(
                    padding: false,
                    leftMaring: false,
                    isSelected: controller.firstSelected.isNotEmpty,
                    selectedVal: controller.firstSelected,
                    dropDownListValues: controller.textSizesList,
                    defaultListValue: '64px',
                    onChanged: (val) {
                      controller.onChanged(val, 0);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.titles.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(controller.titles[index]),
                    const Spacer(),
                    SizedBox(
                      height: Get.height * 0.04,
                      child: CustomDropDownMenu(
                        padding: false,
                        leftMaring: false,
                        dropDownListValues: controller.textSizesList,
                        isSelected: controller.slectedVals[index].isNotEmpty,
                        selectedVal: controller.slectedVals[index],
                        defaultListValue: '64 px',
                        onChanged: (val) =>
                            controller.onChanged(val, index + 1),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: Get.height * 0.02,
                );
              },
            )
          ],
        );
      }),
    ));
  }
}
