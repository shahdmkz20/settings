import 'package:articles/model/settings/record_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/settings/settings_records_controller.dart';
import '../../../../core/constants/colors.dart';

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
      margin: EdgeInsets.only(bottom: 15),
      child: Stack(
        children: [
          SizedBox(
            height: Get.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: Get.width,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recordModel.title,
                            style: Theme.of(context).textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            recordModel.subtitle,
                            style: Theme.of(context).textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
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
