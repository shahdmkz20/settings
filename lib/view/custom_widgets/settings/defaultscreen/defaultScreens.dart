import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:articles/view/custom_widgets/settings/navbar/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Defaultscreens extends StatelessWidget {
  final Widget child;
  final bool haveImage;
  final bool haveSearch;
  final bool notiIcon;
  final double horizntalMargin;
  final double verticalMargin;
  final bool searchTapped;
  final void Function()? onSearchTappped;
  final TextEditingController? searcchController;
  const Defaultscreens(
      {super.key,
      required this.child,
      this.haveImage = false,
      this.haveSearch = false,
      this.horizntalMargin = 0,
      this.verticalMargin = 0,
      this.notiIcon = false,
      this.searchTapped = false,
      this.searcchController,
      this.onSearchTappped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SettingsAppbar(
          //    searchController: searcchController,
          haveSearch: haveSearch,

          onTap: () {
            Get.back();
          },
          haveImage: haveImage,
          notiIcon: notiIcon,
        ),
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: horizntalMargin > 0 ? horizntalMargin : 24,
                vertical: verticalMargin > 0 ? verticalMargin : 12),
            child: CustomNavBar(
              wholeScreen: child,
            ),
          ),
        ),
      ),
    );
  }
}
