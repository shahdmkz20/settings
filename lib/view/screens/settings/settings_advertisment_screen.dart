import 'package:articles/controller/settings/settings_advertisment_controller.dart';
import 'package:articles/view/custom_widgets/settings/cards/settings_job_image_contanier.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdvertismentUpperSection(
                onChanged: (val) {
                  controller.onChanged(val);
                },
                icon: const Icon(Icons.tune),
                dropDownListValues: controller.dropDownMenuItems,
                isSelected: controller.selectedVal.isNotEmpty,
                selectedVal: controller.selectedVal,
                text: 'الجميع',
                bottomMargin: Get.height * 0.03,
              ),
              const SettingsImageContainerWithStack(
                  radius: 5,
                  imageUrl:
                      'https://www.feedough.com/wp-content/uploads/2021/08/advertisement.png')
            ],
          ),
        ));
  }
}
