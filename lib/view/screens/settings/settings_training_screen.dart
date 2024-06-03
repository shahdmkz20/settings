import 'package:articles/controller/settings/settings_training_controller.dart';
import 'package:articles/view/custom_widgets/custom_button.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/sections/settings_job_description.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/settings/cards/settings_job_image_contanier.dart';

class SettingsTrainingScreen extends StatelessWidget {
  const SettingsTrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsTrainingController controller =
        Get.put(SettingsTrainingController());
    return Defaultscreens(
        onTap: () {
          Get.back();
        },
        child: Container(
          height: Get.height * 0.88,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SettingsImageContainerWithStack(
                    imageUrl: controller.trainingModel.imageUrl),
                CustomMediumTitle(text: controller.trainingModel.title),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                DescriptionContainer(
                    height: Get.height * 0.20,
                    title: 'وصف الفرصة',
                    subtitle: false,
                    jobDescription: controller.trainingModel.description),
                DescriptionContainer(
                    height: Get.height * 0.25,
                    pointsShape: 1,
                    jobDescription: '',
                    title: 'محاور التدريب',
                    more: true,
                    subtitle: false,
                    listLength: controller.trainingModel.topics.length,
                    list: controller.trainingModel.topics),
                DescriptionContainer(
                    height: Get.height * 0.20,
                    pointsShape: 1,
                    jobDescription: '',
                    title: 'مخرجات التدريب',
                    more: true,
                    subtitle: false,
                    listLength:
                        controller.trainingModel.trainingOutcomes.length,
                    list: controller.trainingModel.trainingOutcomes),
                DescriptionContainer(
                    pointsShape: 1,
                    jobDescription: '',
                    title: 'التفاصيل',
                    more: true,
                    subtitle: false,
                    listLength: controller.trainingModel.details.length,
                    list: controller.trainingModel.details),
                CustomButton(text: 'احجز', onTap: () {})
              ],
            ),
          ),
        ));
  }
}
