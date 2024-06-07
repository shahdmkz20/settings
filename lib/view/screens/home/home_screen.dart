import 'package:articles/view/screens/home/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
          body: controller.pagesList.elementAt(controller.currentPage));
    });
  }
}
