import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/sections/settings_jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/settings/settings_controller.dart';

import '../../custom_widgets/settings/cards/settings_job_card.dart';

class SettingsJobsScreen extends StatelessWidget {
  const SettingsJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return Defaultscreens(
      onTap: () {
        Get.back();
      },
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: GetBuilder<SettingsController>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SettingsJobsUpperSection(),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Text(
                    "مناسب لك !",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: Get.height * 0.68,
                    child: SettingsJobNewsCard(
                      job: controller.filteredJobList,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
