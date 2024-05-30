import 'package:flutter/material.dart';

class CustomTextWithMore extends StatelessWidget {
  final String title;
  final bool more;
  final void Function()? onTap;
  const CustomTextWithMore(
      {super.key, required this.title, this.more = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: more == false
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        more == true
            ? InkWell(
                onTap: onTap,
                child: Text(
                  'المزيد',
                  style: Theme.of(context).textTheme.titleSmall,
                ))
            : Container(),
      ],
    );
  }
}
