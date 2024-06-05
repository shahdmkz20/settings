import 'package:articles/view/screens/settings/home_screen/controller/settings_controller.dart';
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../../../../model/settings/jobs_model.dart';
import '../../../../model/settings/news_model.dart';

class SettingsJobNewsCard extends StatelessWidget {
  final List<JobModel> job;
  final List<News> newsModel;
  final void Function()? onTap;
  final bool news;

  const SettingsJobNewsCard({
    super.key,
    this.job = const [],
    this.news = false,
    this.newsModel = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            news ? newsModel.length : job.length,
            (index) {
              Duration difference = news
                  ? DateTime.now().difference(newsModel[index].newsPublishDate)
                  : Duration.zero;

              return InkWell(
                onTap: () {
                  if (!news) {
                    controller.goToJob(job[index]);
                  }
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
                            news
                                ? newsModel[index].newsImageUrl
                                : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLn1WqE4mGGJuRpy7KrxgEkgS5p682eow6sA&s',
                          ),
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
                                Expanded(
                                  child: Text(
                                    news
                                        ? newsModel[index].source
                                        : job[index].jobTitle,
                                    style: styleBold16,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                                const Spacer(),
                                const InkWell(
                                  child: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            news
                                ? Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        newsModel[index].newsTitle,
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Text(
                                      job[index].title,
                                      textAlign: TextAlign.start,
                                      style: styleBold16,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                            const Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    news
                                        ? "منذ ${difference.inHours} دقيقة"
                                        : job[index].city,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.02,
                                ),
                                if (!news)
                                  Text(
                                    job[index].workTime == 0
                                        ? "Part-Time"
                                        : "Full-Time",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                const Spacer(),
                                Row(
                                  children: [
                                    news
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: const Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 255, 196, 0),
                                            ),
                                          )
                                        : Container(),
                                    InkWell(
                                      onTap: onTap,
                                      child: SvgPicture.asset(
                                        width: Get.width * 0.05,
                                        AppImages.forwardArrow,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
