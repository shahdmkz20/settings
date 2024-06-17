import 'package:articles/view/screens/settings/saveds_screen/controller/settings_saved_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class CustomColordContainer extends StatelessWidget {
  final dynamic modelItem;
  final bool isUserItemsList;
  final void Function()? onTap;
  const CustomColordContainer(
      {super.key,
      required this.onTap,
      this.isUserItemsList = false,
      this.modelItem});

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
                color: modelItem!.color.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: modelItem!.color),
              ),
              child: isUserItemsList
                  ? Container(
                      width: Get.width * 0.12,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        modelItem!.title,
                        style: whiteDisplayMedium32.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    )
                  : Icon(
                      size: Get.width * 0.09,
                      modelItem!.icon,
                      color: AppColors.primaryCardColor,
                    ),
            ),
          ),
          isUserItemsList
              ? Container()
              : Text(modelItem.title, style: bodyMedium16),
        ],
      ),
    );
  }
}

class CustomColoredContainerListView extends StatelessWidget {
  final List<dynamic> itemsList;
  final bool isUserModel;
  final void Function(int)? onTap;
  const CustomColoredContainerListView({
    super.key,
    required this.itemsList,
    this.isUserModel = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingsSavedController controller = Get.put(SettingsSavedController());
    return SizedBox(
      height: Get.height * 0.17,
      width: Get.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemsList.length,
          itemBuilder: (context, index) {
            return CustomColordContainer(
              onTap: () {
                if (onTap != null) {
                  onTap!(index);
                }
              },
              modelItem: itemsList[index],
              isUserItemsList: isUserModel,
            );
          }),
    );
  }
}
