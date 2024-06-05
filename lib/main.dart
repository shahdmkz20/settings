import 'package:articles/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localizations/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialSercices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialRoute: AppRoutes.splash,
    );
  }
}
