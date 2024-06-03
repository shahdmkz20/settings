import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final int index;
  final List<dynamic> list;
  final void Function(int)? onTap;
  const CustomCard(
      {super.key, required this.index, required this.list, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Colors.grey.withOpacity(0.1),
          )
        ],
      ),
      margin: const EdgeInsets.only(bottom: 15),
      child: Card(
        color: AppColors.primaryCardColor,
        elevation: 0,
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap!(index);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(list[index].icon),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  list[index].name,
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
