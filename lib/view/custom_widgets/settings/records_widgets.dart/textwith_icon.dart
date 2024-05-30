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
  const RecordsUpperOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TextwithIcon(
          text: 'تصفية',
          icon: Icons.tune,
        ),
        SizedBox(width: Get.width * 0.07),
        const TextwithIcon(
          text: 'حذف السجل',
          icon: Icons.delete_outlined,
        )
      ],
    );
  }
}
