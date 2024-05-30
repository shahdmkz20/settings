import 'package:articles/core/constants/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localizations/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      theme: ArabicTheme,
      getPages: routes,
      //initialBinding: InitBindings,
    );
  }
}
