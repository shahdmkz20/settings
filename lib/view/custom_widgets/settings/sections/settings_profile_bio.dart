import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/images.dart';
import 'package:articles/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../model/settings/person_model.dart';

class SettingsProfileBio extends StatelessWidget {
  final Person person;
  const SettingsProfileBio({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          //  height: Get.height * 0.12,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.network(
            height: Get.height * 0.12,
            person.pictureUrl,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(person.name, style: titleSmall16),
              const Text("نبذة"),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      person.bio,
                      style: displaySmall16,
                      overflow:
                          TextOverflow.visible, // Add ellipsis for long text
                    ),
                  ),
                  SvgPicture.asset(
                    color: AppColors.dangerColor,
                    AppImages.powerOff,
                    width: Get.width * 0.065,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
