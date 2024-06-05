import 'package:flutter/material.dart';

import '../cards/settings_custom_card.dart';

class CustomCardList extends StatelessWidget {
  final List<dynamic> list;
  final void Function(int)? onTap;
  const CustomCardList({super.key, required this.list, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomCard(
          index: index,
          onTap: (index) {
            if (onTap != null) {
              onTap!(index);
            }
          },
          list: list,
        );
      },
    );
  }
}
