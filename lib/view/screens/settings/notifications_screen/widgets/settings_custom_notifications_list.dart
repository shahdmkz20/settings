import 'package:articles/model/settings/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/functions/returnTimeDifference.dart';

class CustomNotificationsCard extends StatelessWidget {
  final NotificationModel notificationModel;
  final void Function()? onTap;

  const CustomNotificationsCard(
      {super.key, required this.notificationModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.12,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.primaryCardColor,
          borderRadius: BorderRadius.circular(5)),
      width: Get.width,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: Get.width * 0.15,
                height: Get.height * 0.15,
                margin: const EdgeInsets.symmetric(vertical: 5),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  fit: BoxFit.cover,
                  notificationModel.notificationImageUrl,
                )),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    notificationModel.notificationTitle,
                    overflow: TextOverflow.ellipsis,
                    style: paragraphStyle,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "  منذ ${timeDifferenceFromNow(notificationModel.notificationDate)}",
                    style: styleBold16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsCustomNotificationsList extends StatelessWidget {
  final List<NotificationModel> notificationModelList;
  final void Function(int) onTap;

  const SettingsCustomNotificationsList({
    super.key,
    required this.notificationModelList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: notificationModelList.length,
        itemBuilder: (context, index) {
          return CustomNotificationsCard(
            onTap: () => onTap(index),
            notificationModel: notificationModelList[index],
          );
        });
  }
}
