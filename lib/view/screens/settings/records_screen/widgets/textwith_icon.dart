import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextwithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const TextwithIcon(
      {super.key, this.onTap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Text(text),
          const Spacer(),
          InkWell(onTap: onTap, child: Icon(icon))
        ],
      ),
    );
  }
}

class RecordsUpperOptions extends StatelessWidget {
  final void Function()? filterIconTap;
  final void Function()? deleteIconTap;
  const RecordsUpperOptions(
      {super.key, this.filterIconTap, this.deleteIconTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextwithIcon(
          onTap: filterIconTap,
          text: 'تصفية',
          icon: Icons.tune,
        ),
        SizedBox(width: Get.width * 0.07),
        TextwithIcon(
          onTap: deleteIconTap,
          text: 'حذف السجل',
          icon: Icons.delete_outlined,
        )
      ],
    );
  }
}
