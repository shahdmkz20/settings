import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DescriptionContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool subtitle;
  final String jobDescription;
  final int listLength;
  final List<String> list;
  final bool more;
  final int pointsShape;
  final double height;
  const DescriptionContainer({
    super.key,
    required this.title,
    this.jobDescription = '',
    this.list = const [],
    this.more = false,
    this.listLength = 0,
    this.subTitle = '',
    this.subtitle = true,
    this.pointsShape = 0,
    this.height = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: height > 0 ? height : Get.height * 0.13,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          subtitle == true
              ? Text(
                  subTitle,
                  style: Theme.of(context).textTheme.displayMedium,
                )
              : Container(),
          more == false ? Expanded(child: Text(jobDescription)) : Container(),
          more
              ? Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listLength,
                    itemBuilder: (context, index) {
                      return Text(
                        pointsShape == 0
                            ? '${index + 1}- ${list[index]}'
                            : '- ${list[index]}',
                        style: Theme.of(context).textTheme.bodySmall,
                      );
                    },
                  ),
                )
              : Container(), // Add an empty container if 'more' is false
        ],
      ),
    );
  }
}
