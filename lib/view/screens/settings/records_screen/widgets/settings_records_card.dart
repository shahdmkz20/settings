import 'package:articles/model/settings/record_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/settings_records_controller.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class SettingsRecordsCard extends StatelessWidget {
  final RecordModel recordModel;
  final bool isChecked;
  final SettingsRecordsController controller; // Add controller parameter

  const SettingsRecordsCard({
    Key? key,
    required this.recordModel,
    required this.isChecked,
    required this.controller, // Accept controller parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.1,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.1),
                )
              ],
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primaryCardColor,
            ),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                    recordModel.personImageUrl,
                    width: Get.width * 0.18,
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recordModel.title,
                        style: bodyMedium16,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        recordModel.subtitle,
                        style: styleBold16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
          Positioned(
            top: -15,
            right: -10,
            child: Checkbox(
              value: isChecked,
              onChanged: (val) {
                controller.toggleCheckedForRecord(recordModel);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecordsList extends GetView<SettingsRecordsController> {
  const RecordsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsRecordsController>(builder: (context) {
      return ListView.builder(
        itemCount: controller.recordsList.length,
        itemBuilder: (context, index) {
          final record = controller.recordsList[index];
          final isChecked = controller.isCheckedForRecord(record);
          return SettingsRecordsCard(
            recordModel: record,
            isChecked: isChecked,
            controller: controller,
          );
        },
      );
    });
  }
}
