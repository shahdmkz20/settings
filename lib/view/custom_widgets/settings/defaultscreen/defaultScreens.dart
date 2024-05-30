import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';

class Defaultscreens extends StatelessWidget {
  final Widget child;
  final bool haveImage;
  final void Function()? onTap;
  const Defaultscreens(
      {super.key, required this.child, this.haveImage = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SettingsAppbar(
          onTap: onTap,
          haveImage: haveImage,
        ),
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        ),
      ),
    );
  }
}
