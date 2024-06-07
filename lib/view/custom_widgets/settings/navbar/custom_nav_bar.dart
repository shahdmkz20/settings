import 'package:articles/core/constants/colors.dart';

import 'package:articles/data/static/nav_bar_icons_list.dart';
import 'package:articles/view/screens/home/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomNavBar extends StatelessWidget {
  final Widget wholeScreen;
  const CustomNavBar({super.key, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    HomeController controller = Get.put(HomeController());
    return Stack(
      children: [
        wholeScreen,
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Container(
            width: Get.width,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.textGreyColor.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10)
                  ],
                  color: AppColors.primaryCardColor,
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(width: 0.5, color: AppColors.textGreyColor)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(iconsList.length, (index) {
                    return InkWell(
                      onTap: () {
                        controller.changePage(index);
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            color: AppColors.textGreyColor,
                            iconsList[index][0],
                            width: Get.width * 0.035,
                            height: Get.height * 0.035,
                          ),
                          Text(iconsList[index][1])
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
