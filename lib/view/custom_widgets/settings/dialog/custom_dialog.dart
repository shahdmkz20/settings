import 'package:articles/core/constants/colors.dart';
import 'package:articles/view/custom_widgets/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/text/custom_text_with_more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/custom_dialog_buttons.dart';
import 'widgets/custom_textformfield.dart';
import 'widgets/favourites_section.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final TextEditingController? controller;
  final void Function()? firstBtnTap;

  final bool favourites;
  final bool deleteAccount;
  final String firstBtnTxt;
  final String sndBtnTxt;
  final bool justText;
  final String text;
  const CustomDialog({
    super.key,
    this.title = '',
    this.content = "",
    this.controller,
    this.firstBtnTap,
    this.favourites = false,
    this.deleteAccount = false,
    this.firstBtnTxt = '',
    this.sndBtnTxt = "الغاء",
    this.justText = false,
    this.text = '',
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
          child: justText
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColors.primaryBackGroundColor),
                      ),
                    ),
                  ],
                )
              : Column(
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
                                .copyWith(
                                    color: AppColors.primaryBackGroundColor),
                          )
                        : Container(),
                    deleteAccount
                        ? Container(
                            margin: EdgeInsets.symmetric(
                                vertical: Get.height * 0.02),
                            child: CustomDialogTextformfield(
                              controller: controller!,
                              hintText: ' كلمة السر ',
                            ),
                          )
                        : Container(),
                    favourites
                        ? FavouritesSection(
                            controller: controller!,
                          )
                        : Container(),
                    CustomDialogButtons(
                      firstBtnTxt: firstBtnTxt,
                      sndBtnTxt: sndBtnTxt,
                      secondBtnTap: () {
                        Get.back();
                      },
                      firstBtnTap: firstBtnTap,
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
