import 'package:articles/core/constants/colors.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/text/custom_text_with_more.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/custom_dialog_buttons.dart';
import 'widgets/custom_textformfield.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final TextEditingController controller;
  final void Function()? firstBtnTap;
  final void Function()? secondBtnTap;
  final bool favourites;
  final bool deleteAccount;
  final String firstBtnTxt;
  final String sndBtnTxt;
  const CustomDialog({
    super.key,
    required this.title,
    this.content = "",
    required this.controller,
    this.firstBtnTap,
    this.secondBtnTap,
    this.favourites = false,
    this.deleteAccount = false,
    required this.firstBtnTxt,
    this.sndBtnTxt = "الغاء",
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColors.secondryBackGroundColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: Get.height * 0.02),
                child: CustomMediumTitle(
                  text: title,
                  changeStyle: true,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: AppColors.primaryBackGroundColor),
                ),
              ),
              deleteAccount
                  ? CustomTextWithMore(
                      title: content,
                      changeStyle: true,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColors.primaryBackGroundColor),
                    )
                  : Container(),
              deleteAccount
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                      child: CustomDialogTextformfield(
                        controller: controller,
                        hintText: ' كلمة السر ',
                      ),
                    )
                  : Container(),
              favourites
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
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
                          Expanded(
                            child: CustomDialogTextformfield(
                                controller: controller,
                                hintText: "اسم القائمة"),
                          )
                        ],
                      ),
                    )
                  : Container(),
              CustomDialogButtons(
                firstBtnTxt: firstBtnTxt,
                sndBtnTxt: sndBtnTxt,
                secondBtnTap: secondBtnTap,
                firstBtnTap: firstBtnTap,
              )
            ],
          ),
        ),
      ),
    );
  }
}
