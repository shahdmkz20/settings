import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';

class SettingsInfoPrivacyCard extends StatelessWidget {
  final IconData icon;
  final int privacyMode;
  final String fieldText;
  const SettingsInfoPrivacyCard(
      {super.key,
      required this.icon,
      required this.privacyMode,
      required this.fieldText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      child: Expanded(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Icon(
                icon,
                color: AppColors.textGreyColor,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fieldText,
                  style: const TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(privacyMode > 0 ? Icons.analytics : Icons.lock_outline,
                        size: Get.width * 0.035),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Text(
                      privacyMode > 0 ? 'الجميع' : 'فقط انا ',
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.edit_outlined,
              color: AppColors.textGreyColor,
            )
          ],
        ),
      ),
    );
  }
}
