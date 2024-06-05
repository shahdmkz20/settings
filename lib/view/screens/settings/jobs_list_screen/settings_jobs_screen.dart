import 'package:articles/core/constants/styles.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/screens/settings/jobs_list_screen/widgets/settings_jobs_upper_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_screen/controller/settings_controller.dart';

import '../../../custom_widgets/settings/cards/settings_job_news_card.dart';

class SettingsJobsScreen extends StatelessWidget {
  const SettingsJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return Defaultscreens(
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
                    style: titleMedium32,
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
