import 'package:articles/view/custom_widgets/settings/sections/settings_jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/settings/settings_controller.dart';

import '../../custom_widgets/settings/appbar/settings_appbar.dart';
import '../../custom_widgets/settings/cards/settings_job_card.dart';

class SettingsJobsScreen extends StatelessWidget {
  const SettingsJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SettingsAppbar(
            onTap: () {
              Get.back();
            },
            haveImage: false,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: GetBuilder<SettingsController>(
              builder: (controller) {
                return Container(
                  width: Get.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
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
                        child: SettingsJobCard(
                          job: controller.filteredJobList,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
