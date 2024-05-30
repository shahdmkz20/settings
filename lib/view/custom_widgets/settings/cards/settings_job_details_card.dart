import 'package:articles/model/settings/jobs_description_model.dart';
import 'package:articles/model/settings/jobs_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsJobDetailsCard extends StatelessWidget {
  final JobDescription jobDescription;
  final String text;
  const SettingsJobDetailsCard(
      {super.key, required this.jobDescription, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        jobDescription.icon,
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(jobDescription.title),
            Text(text),
          ],
        )
      ],
    );
  }
}

class SettingsJobDetailsGrid extends StatelessWidget {
  final List<JobDescription> jobDescription;
  final JobModel job;
  const SettingsJobDetailsGrid(
      {super.key, required this.jobDescription, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0,
            childAspectRatio: 2,
          ),
          itemCount: jobDescription.length,
          itemBuilder: (context, index) {
            String additionalText;
            switch (index) {
              case 0:
                additionalText =
                    (job.workTime == 0 ? " دوام جزئي" : " دوام كامل") +
                        (job.jobType == 0 ? " عن بعد" : " في المكتب");
                break;
              case 1:
                additionalText = (job.age == "Any"
                    ? "لا يشترط عمر محدد"
                    : "${job.age} فما فوق");
                break;
              case 2:
                additionalText = (job.nationality == 'Any'
                    ? " لا يشترط جنسية"
                    : job.nationality);
                break;
              case 3:
                additionalText =
                    (job.sex == "Any" ? "لا يشترط جنس محدد" : job.sex);
                break;
              default:
                additionalText = 'Default text';
                break;
            }
            return SettingsJobDetailsCard(
              jobDescription: jobDescription[index],
              text: additionalText,
            );
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
