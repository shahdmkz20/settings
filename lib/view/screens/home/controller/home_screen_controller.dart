import 'package:articles/view/screens/settings/advertisment/settings_advertisment_screen.dart';
import 'package:articles/view/screens/settings/home_screen/settings_home_screen.dart';
import 'package:articles/view/screens/settings/jobs_list_screen/settings_jobs_screen.dart';
import 'package:articles/view/screens/settings/notifications_screen/settings_notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../news/news_home_screen/news_home_screen.dart';

abstract class HomeControllerABS extends GetxController {
  late List<Widget> pagesList;
  changePage(int index);
}

class HomeController extends HomeControllerABS {
  int currentPage = 4;

  @override
  List<Widget> get pagesList => [
        NewsHomeScreen(),
        SettingsHomePage(),
        SettingsJobsScreen(),
        SettingsNotificationsScreen(),
        SettingsAdvertismentScreen(),
      ];

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
