import 'package:articles/data/static/static.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_medium_title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller/settings_jobs_controller.dart';
import '../../../custom_widgets/settings/buttons/custom_button.dart';
import 'widgets/settings_job_details_card.dart';
import '../../../custom_widgets/settings/cards/settings_job_image_contanier.dart';
import '../../../custom_widgets/settings/defaultscreen/defaultScreens.dart';
import '../../../custom_widgets/settings/sections/settings_description_container.dart';

class JobInformation extends StatelessWidget {
  const JobInformation({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsJobsController controller = Get.put(SettingsJobsController());
    return Defaultscreens(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SettingsImageContainerWithStack(
              imageUrl:
                  'https://www.guvi.in/blog/wp-content/uploads/2023/07/Future-and-Scope-of-UIUX-Design.webp',
            ),
            CustomMediumTitle(text: controller.job.jobTitle),
            DescriptionContainer(
              title: "وصف الفرصة",
              subtitle: false,
              jobDescription: controller.job.description,
            ),
            DescriptionContainer(
              title: "المهام",
              subTitle: "ستكون مسؤولًا عن: ",
              subtitle: true,
              more: true,
              listLength: controller.job.tasks.length,
              list: controller.job.tasks,
            ),
            DescriptionContainer(
              title: "معايير التقديم",
              subTitle: "يجب ان تملك:",
              subtitle: true,
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
    );
  }
}
