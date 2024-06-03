import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cards/settings_custom_card.dart';

class CustomCardList extends StatelessWidget {
  final List<dynamic> list;
  const CustomCardList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        itemCount: list.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomCard(
            index: index,
            list: list,
          );
        },
      ),
    );
  }
}
