import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/settings/home_screen/controller/settings_controller.dart';

class SettingsAppbar extends StatelessWidget {
  final bool haveImage;
  final bool haveSearch;
  final bool notiIcon;

  final void Function()? onTap;

  final TextEditingController? searchController;
  const SettingsAppbar({
    super.key,
    this.haveImage = false,
    required this.onTap,
    this.haveSearch = false,
    this.notiIcon = false,
    this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = SettingsController();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: Get.width,
      child: Row(
        children: [
          if (haveImage)
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.network(
                controller.personModel.pictureUrl,
                width: Get.width * 0.15,
              ),
            ),
          const Spacer(),
          if (haveSearch)
            Row(
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    margin: const EdgeInsets.only(left: 3),
                    child: Icon(
                      size: Get.width * 0.07,
                      Icons.search,
                      color: AppColors.textGreyColor,
                    ),
                  ),
                )
              ],
            ),
          InkWell(
            onTap: onTap,
            child: Icon(
              notiIcon
                  ? Icons.notifications_active_outlined
                  : Icons.arrow_forward,
              size: Get.width * 0.08,
              color: notiIcon ? AppColors.colorOrange : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
