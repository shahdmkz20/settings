import 'package:articles/controller/settings/settings_saved_controller.dart';
import 'package:articles/model/settings/saved_cat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';

class SettingsSavedCat extends StatelessWidget {
  final SavedCat savedCat;
  final void Function()? onTap;
  const SettingsSavedCat(
      {super.key, required this.savedCat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: savedCat.color.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: savedCat.color),
              ),
              child: Icon(
                size: Get.width * 0.09,
                savedCat.icon,
                color: AppColors.primaryCardColor,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(savedCat.title, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class SettingsSavedCatListView extends StatelessWidget {
  final List<SavedCat> savedCategories;
  const SettingsSavedCatListView({super.key, required this.savedCategories});

  @override
  Widget build(BuildContext context) {
    SettingsSavedController controller = Get.put(SettingsSavedController());
    return SizedBox(
      height: Get.height * 0.17,
      width: Get.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: savedCategories.length,
          itemBuilder: (context, index) {
            return SettingsSavedCat(
              onTap: () {
                controller.goToScreen(index);
              },
              savedCat: savedCategories[index],
            );
          }),
    );
  }
}
