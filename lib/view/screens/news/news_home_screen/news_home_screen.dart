import 'package:articles/view/custom_widgets/settings/defaultscreen/defaultScreens.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_medium_title.dart';
import 'package:articles/view/custom_widgets/settings/text/custom_text_with_more.dart';
import 'package:articles/view/screens/news/news_home_screen/controller/news_home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/settings/userlist_model.dart';

import '../../settings/saveds_screen/widgets/settings_saved_cat.dart';

class NewsHomeScreen extends StatelessWidget {
  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsHomeScreenController controller = Get.put(NewsHomeScreenController());
    return Defaultscreens(
      haveImage: true,
      haveSearch: true,
      notiIcon: true,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const CustomMediumTitle(text: 'أهلًا بك من جديد')),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: CustomTextWithMore(
              onTap: () {
                controller.showDialogg();
              },
              title: 'قوائمي',
              more: true,
            ),
          ),
          CustomColoredContainerListView(
            itemsList: userMenuList,
            isUserModel: true,
          ),
        ],
      ),
    );
  }
}
