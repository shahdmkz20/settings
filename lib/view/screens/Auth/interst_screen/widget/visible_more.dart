import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/styles.dart';
import '../controller/interst_controller.dart';

class VisibleMore extends StatelessWidget {
  const VisibleMore({
    super.key,
    required InterstController controller,
  }) : _controller = controller;

  final InterstController _controller;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _controller.isPressed == false,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  _controller.toggleIsSelected();
                },
                child: Text('المزيد',
                    style: styleRegular16.copyWith(
                        color: const Color(0xff282828))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
