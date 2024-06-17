import 'package:get/get.dart';

import '../../../../../model/settings/news_model.dart';

abstract class SettingsNewsControllerASB extends GetxController {
  categoryChanged(int index);
}

class SettingsNewsController extends SettingsNewsControllerASB {
  int selected = 0;
  late List<News> filteredList = news;
  @override
  void categoryChanged(int index) {
    selected = index;
    filterList(selected);
    update();
  }

  void filterList(int selectedCategory) {
    if (selectedCategory == 0) {
      // If selectedCategory is zero, do not filter the list
      filteredList = news;
    } else {
      // Otherwise, filter the list based on the selected category
      filteredList = news
          .where((newsItem) => newsItem.newsCategory == selectedCategory)
          .toList();
    }
    update();
  }
}
