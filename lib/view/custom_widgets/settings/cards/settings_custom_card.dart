import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/settings/settings_controller.dart';
import '../../../../model/settings/settings_sections.dart';

class CustomCard extends StatelessWidget {
  final int index;
  final List<dynamic> list;
  const CustomCard({super.key, required this.index, required this.list});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Colors.grey.withOpacity(0.1),
          )
        ],
      ),
      margin: const EdgeInsets.only(bottom: 15),
      child: Card(
        color: AppColors.primaryCardColor,
        elevation: 0,
        child: InkWell(
          onTap: () {
            controller.goToPage(index);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(list[index].icon),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  list[index].name,
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
