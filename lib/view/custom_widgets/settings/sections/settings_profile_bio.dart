import 'package:articles/core/constants/colors.dart';
import 'package:articles/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../model/settings/person_model.dart';

class SettingsProfileBio extends StatelessWidget {
  final Person person;
  const SettingsProfileBio({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Get.height * 0.12,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.network(
              person.pictureUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    person.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Text("نبذة"),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          person.bio,
                          style: Theme.of(context).textTheme.displaySmall,
                          overflow: TextOverflow
                              .visible, // Add ellipsis for long text
                        ),
                      ),
                      SvgPicture.asset(
                        color: AppColors.dangerColor,
                        ImageAssets.powerOff,
                        width: Get.width * 0.065,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
