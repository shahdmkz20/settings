import 'package:articles/core/constants/styles.dart';
import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/screens/settings/jobs_list_screen/widgets/settings_jobs_upper_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/settings/cards/settings_job_news_card.dart';
import 'controller/settings_jobs_list_controller.dart';

class SettingsJobsScreen extends StatelessWidget {
  const SettingsJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsJobsListController());
    return Defaultscreens(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: GetBuilder<SettingsJobsListController>(
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
                    height: Get.height * 0.5,
                    child: SettingsJobNewsCard(
                      onTap: (index) {
                        controller.goToJob(controller.filteredJobList[index]);
                      },
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
