import 'package:articles/core/constants/styles.dart';
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleSmall16,
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          subtitle == true
              ? Text(
                  subTitle,
                  style: displayMedium18,
                )
              : Container(),
          more == false
              ? Flexible(
                  child: Text(
                  jobDescription,
                  overflow: TextOverflow.visible,
                ))
              : Container(),
          more
              ? Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listLength,
                    itemBuilder: (context, index) {
                      return Text(
                        pointsShape == 0
                            ? '${index + 1}- ${list[index]}'
                            : '- ${list[index]}',
                        style: bodyMedium32,
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
