import 'package:articles/controller/settings/settings_controller.dart';
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../model/settings/jobs_model.dart';

class SettingsJobCard extends StatelessWidget {
  final List<JobModel> job;
  const SettingsJobCard({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          job.length,
          (index) => InkWell(
            onTap: () {
              controller.goToJob(job[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.only(bottom: 25),
              width: Get.width,
              height: Get.height * 0.15,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(
                          fit: BoxFit.fill,
                          height: Get.height * 0.15,
                          //job[index].imageUrl,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLn1WqE4mGGJuRpy7KrxgEkgS5p682eow6sA&s'),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              job[index].jobTitle,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const Spacer(),
                            const InkWell(
                              child: Icon(Icons.more_vert),
                            )
                          ],
                        ),
                        Text(
                          job[index].title,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(job[index].city),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text(
                              job[index].workTime == 0
                                  ? "دوام جزئي"
                                  : "دوام كامل",
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                                width: Get.width * 0.05,
                                ImageAssets.forwardArrow),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
