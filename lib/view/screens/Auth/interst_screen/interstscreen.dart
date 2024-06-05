// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/styles.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_sliver_appbar.dart.dart';
import 'controller/interst_controller.dart';
import 'widget/custom_search.dart';
import 'widget/interst_section.dart';
import 'widget/visible_more.dart';

class InterstsScreen extends StatelessWidget {
  const InterstsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InterstController _controller = Get.put(InterstController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppbar(
              onPressed: () {
                _controller.toBack();
              },
            ),
            SliverToBoxAdapter(
              child: Obx(() => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text("وصلنا الخطوة الاخيرة قبل البدء",
                            maxLines: 1,
                            style: styleBold24.copyWith(fontSize: 18)),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Text(
                            "اختر اهتماماتك التي تفضل رؤية محتوى خاص بها",
                            maxLines: 1,
                            style: styleRegular16.copyWith(
                                color: const Color(0xff282828), fontSize: 11),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      const CustomSearch(),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "*اختر ثلاثة اهتمامات على الاقل ",
                              style: styleRegular16.copyWith(
                                  color: const Color(0xff282828)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      InterstsSection(controller: _controller),
                      SizedBox(
                        height: Get.height * 0.07,
                      ),
                      VisibleMore(controller: _controller),
                      SizedBox(
                        height: Get.height * 0.001,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: CustomElevatedButton(
                          text: 'متابعة',
                          onPressed: () {
                            _controller.toNext();
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
