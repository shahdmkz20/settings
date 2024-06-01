import 'package:articles/controller/settings/settings_advertisment_controller.dart';
import 'package:articles/model/settings/training_model.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/settings/cards/settings_advertisment_card.dart';
import '../../custom_widgets/settings/sections/settings_advertisment_upper_section.dart';

class SettingsAdvertismentScreen extends StatelessWidget {
  const SettingsAdvertismentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsAdvertismentController controller =
        Get.put(SettingsAdvertismentController());
    return Defaultscreens(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: GetBuilder<SettingsAdvertismentController>(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomMediumTitle(text: 'البوابة الاعلانية'),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  AdvertismentUpperSection(
                    onChanged: (val) {
                      controller.onChanged(val);
                    },
                    icon: Icons.tune,
                    dropDownListValues: controller.dropDownMenuItems,
                    isSelected: controller.selectedVal.isNotEmpty,
                    selectedVal: controller.selectedVal,
                    text: 'الجميع',
                    bottomMargin: Get.height * 0.03,
                  ),
                  SettingsAdvertismentList(
                    trainingList: controller.trainings,
                    onTap: (train) {
                      controller.goToTraining(train);
                    },
                  )
                ],
              ),
            );
          }),
        ));
  }
}
