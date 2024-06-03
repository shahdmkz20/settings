import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';

class Defaultscreens extends StatelessWidget {
  final Widget child;
  final bool haveImage;
  final bool haveSearch;
  final void Function()? onTap;
  final double horizntalMargin;
  final double verticalMargin;
  const Defaultscreens(
      {super.key,
      required this.child,
      this.haveImage = false,
      this.onTap,
      this.haveSearch = false,
      this.horizntalMargin = 0,
      this.verticalMargin = 0});

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
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: horizntalMargin > 0 ? horizntalMargin : 24,
                vertical: verticalMargin > 0 ? verticalMargin : 12),
            child: child,
          ),
        ),
      ),
    );
  }
}
