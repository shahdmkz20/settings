import 'package:articles/view/custom_widgets/settings/appbar/settings_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class SettingsHobbiesScreen extends StatelessWidget {
  const SettingsHobbiesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = Get.width * 0.17;
    int i = 0;
    List<Map<String, dynamic>> items = [
      {'text': 'الفن', 'color': Colors.orange},
      {'text': 'غرافيك', 'color': Colors.grey},
      {'text': 'اعلام', 'color': Colors.grey},
      {'text': 'الرسم', 'color': Colors.grey},
      {'text': 'الموسيقا', 'color': Colors.grey},
      {'text': 'إدارة الأعمال', 'color': Colors.orange},
      {'text': 'الصحة', 'color': Colors.orange},
      {'text': 'السفر', 'color': Colors.grey},
      {'text': 'تجربة المستخدم', 'color': Colors.grey},
      {'text': 'التسويق', 'color': Colors.orange},
      {'text': 'التاريخ', 'color': Colors.grey},
      {'text': 'غرافيك', 'color': Colors.grey},
      {'text': 'العادات', 'color': Colors.orange},
      {'text': 'الحضارات', 'color': Colors.grey},
    ];

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SettingsAppbar(onTap: () {
            Get.back();
          })),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: Get.width,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: MasonryGridView.count(
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                i++;
                return Container(
                  width: containerWidth,
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      items[index]['text'],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  color: items[index]['color'],
                );
              },
              crossAxisCount: i++ == 0 ? 4 : 3,
            ),
          ),
        ),
      ),
    );
  }
}
