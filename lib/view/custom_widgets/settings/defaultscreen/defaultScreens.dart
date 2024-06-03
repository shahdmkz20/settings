import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';

class Defaultscreens extends StatelessWidget {
  final Widget child;
  final bool haveImage;
  final bool haveSearch;
  final void Function()? onTap;
  const Defaultscreens(
      {super.key,
      required this.child,
      this.haveImage = false,
      this.onTap,
      this.haveSearch = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SettingsAppbar(
          haveSearch: haveSearch,
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
