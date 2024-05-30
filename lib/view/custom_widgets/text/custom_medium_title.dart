import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomMediumTitle extends StatelessWidget {
  final String text;
  final bool addIcon;
  final Icon icon;
  final void Function()? onTap;
  const CustomMediumTitle(
      {super.key,
      required this.text,
      this.addIcon = false,
      this.icon = const Icon(Icons.deblur),
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: addIcon == false
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textAlign: TextAlign.start,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        addIcon == true
            ? InkWell(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.primaryCardColor),
                    child: icon),
              )
            : Container(),
      ],
    );
  }
}
