import 'package:articles/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomTextWithMore extends StatelessWidget {
  final String title;
  final bool more;
  final bool changeStyle;
  final void Function()? onTap;
  final TextStyle? style;
  const CustomTextWithMore({
    super.key,
    required this.title,
    this.more = false,
    this.onTap,
    this.changeStyle = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: more == false
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: changeStyle ? style : titleSmall16),
        more == true
            ? InkWell(
                onTap: onTap,
                child: Text(
                  'المزيد',
                  style: titleSmall16,
                ))
            : Container(),
      ],
    );
  }
}
