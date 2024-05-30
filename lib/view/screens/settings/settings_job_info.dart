import 'package:articles/data/static/static.dart';
import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/settings/settings_jobs_controller.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/settings/cards/settings_job_details_card.dart';
import '../../custom_widgets/settings/cards/settings_job_image_contanier.dart';
import '../../custom_widgets/settings/sections/settings_job_description.dart';

class JobInformation extends StatelessWidget {
  const JobInformation({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsJobsController controller = Get.put(SettingsJobsController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SettingsAppbar(
          onTap: () {
            Get.back();
          },
          haveImage: false,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingsJobImageContanier(
                  imageUrl:
                      'https://www.guvi.in/blog/wp-content/uploads/2023/07/Future-and-Scope-of-UIUX-Design.webp',
                ),
                CustomMediumTitle(text: controller.job.jobTitle),
                JobDescriptionContainer(
                  title: "وصف الفرصة",
                  subtitle: false,
                  jobDescription: controller.job.description,
                ),
                JobDescriptionContainer(
                  title: "المهام",
                  subTitle: "ستكون مسؤولًا عن: ",
                  subtitle: true,
                  jobDescription: controller.job.description,
                  more: true,
                  listLength: controller.job.tasks.length,
                  list: controller.job.tasks,
                ),
                JobDescriptionContainer(
                  title: "معايير التقديم",
                  subTitle: "يجب ان تملك:",
                  subtitle: true,
                  jobDescription: controller.job.description,
                  more: true,
                  listLength: controller.job.tasks.length,
                  list: controller.job.tasks,
                ),
                Text(
                  "التفاصيل",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SettingsJobDetailsGrid(
                    job: controller.job, jobDescription: jobDescription),
                CustomButton(
                  onTap: () {},
                  text: 'تقديم',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
