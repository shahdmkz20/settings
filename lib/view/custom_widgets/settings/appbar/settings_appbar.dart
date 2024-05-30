import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/settings/settings_controller.dart';

class SettingsAppbar extends StatelessWidget {
  final bool haveImage;
  final void Function()? onTap;
  const SettingsAppbar({
    super.key,
    this.haveImage = false,
    required this.onTap,
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
                controller.person.pictureUrl,
                width: Get.width * 0.15,
              ),
            ),
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: Icon(
              Icons.arrow_forward,
              size: Get.width * 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
