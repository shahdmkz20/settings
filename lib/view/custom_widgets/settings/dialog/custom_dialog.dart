import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onAdd;
  const CustomDialog(
      {super.key, required this.controller, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.secondryBackGroundColor),
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'انشئ قائمتك الخاصة',
                  style: TextStyle(color: AppColors.primaryBackGroundColor),
                ),
                SizedBox(height: Get.height * 0.05),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 15),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColors.textGreyColor),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: AppColors.primaryBackGroundColor,
                        )),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: AppColors.textGreyColor)),
                      width: Get.width * 0.6,
                      child: TextField(
                        controller: controller,
                        style: const TextStyle(
                            color: AppColors.primaryBackGroundColor),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                            border: InputBorder.none,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: AppColors.primaryBackGroundColor),
                            hintText: 'اسم القائمة'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.05),
                Row(
                  children: [
                    InkWell(
                      onTap: onAdd,
                      child: const Text(
                        'انشاء',
                        style:
                            TextStyle(color: AppColors.primaryBackGroundColor),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: const Text(
                          'الغاء',
                          style: TextStyle(
                              color: AppColors.primaryBackGroundColor),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
