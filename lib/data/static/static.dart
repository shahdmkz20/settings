import 'package:articles/core/constants/colors.dart';
import 'package:articles/model/settings/jobs_description_model.dart';
import 'package:articles/model/settings/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../../model/settings/saved_cat_model.dart';
import '../../model/settings/settings_sections.dart';

//settings sections data
List<dynamic> settingsSections = [
  SettingsSectionsModel(id: 1, name: "الوظائف", icon: Icons.work_outline),
  SettingsSectionsModel(id: 2, name: "المحفوظات", icon: Icons.bookmark_outline),
  SettingsSectionsModel(
      id: 3, name: "الاهتمامات", icon: Icons.favorite_outline),
  SettingsSectionsModel(id: 4, name: "السجلات", icon: Icons.history_outlined),
  SettingsSectionsModel(
      id: 5, name: "البوابة الاعلانية", icon: Icons.campaign_outlined),
  SettingsSectionsModel(
      id: 1, name: "الاعدادات", icon: Icons.settings_outlined),
];

List<String> jobsType = [
  'عن بعد' //0
  ,
  'في الموقع' //1
];
List<String> jobWorkTime = [
  'دوام جزئي', // 0
  'دوام كامل', // 1
];

List<String> jobField = [
  'البرمجة' //0
  ,
  ' التصميم' //1
  ,
  'ادارة الاعمال' //2
  ,
  'التسويق' //3
];

List<JobDescription> jobDescription = [
  JobDescription(icon: const Icon(Icons.work_outline), title: 'نوع الوظيفة'),
  JobDescription(icon: const Icon(Icons.cake), title: 'العمر'),
  JobDescription(icon: const Icon(Icons.flag), title: 'الجنسية'),
  JobDescription(icon: const Icon(Icons.girl), title: 'الجنس'),
];

List<SavedCat> savedCategories = [
  SavedCat(
      title: 'الأخبار',
      color: AppColors.accent,
      icon: Icons.ads_click_outlined),
  SavedCat(
      title: 'المقالات',
      color: AppColors.successColor,
      icon: Icons.menu_book_outlined),
  SavedCat(
      title: 'البودكاست', color: AppColors.dangerColor, icon: Icons.headphones),
  SavedCat(
      title: 'المتجر',
      color: AppColors.secondryBackGroundColor,
      icon: Icons.shopping_bag_outlined),
];

List<String> savedCategoriesTab = [
  'جديد',
  'صحة', //1
  'اعلام', //2
  'سياحة', //3
  'تسويق', //4
  'رياضة', //5
  'ازياء', //6
];

List<String> advList = [
  'البرمجة' //0
  ,
  ' التصميم' //1
  ,
  'ادارة الاعمال' //2
  ,
  'التسويق' //3
];

List<dynamic> settingsGeneralList = [
  SettingsModel(
      listId: 1,
      name: 'الحساب والملف الشخصي',
      icon: Icons.account_circle_outlined),
  SettingsModel(listId: 2, name: 'تغيير كلمة السر', icon: Icons.lock_outline),
  SettingsModel(
      listId: 3,
      name: 'ادارة الاشعارات',
      icon: Icons.notification_important_outlined),
];

List<dynamic> settingsAppList = [
  SettingsModel(listId: 1, name: 'حجم الخط', icon: Elusive.text_height),
  SettingsModel(listId: 2, name: "حول", icon: FontAwesome5.exclamation_circle),
];

List<IconData> profileSettingsIcons = [
  Icons.phone_outlined,
  Icons.facebook_outlined,
  Brandico.linkedin_1,
  Icons.email_outlined,
];

List<IconData> profileGeneralInfo = [
  Icons.boy_outlined,
  Icons.cake_outlined,
];

List<List<dynamic>> notificationsList = [
  ['الأحدث تريند', Icons.trending_up],
  ['توصياتنا', Icons.volume_up_outlined],
  ['بودكاست تتابعه', Icons.volume_up_outlined],
  ['تحذيرات أمنية', Icons.shield_outlined],
];

String textDisc =
    'لأننا نريد أن يكون هذا التطبيق مرجعًا لكم ولأننا نسعى دائمًا لتكون رؤيتنا واضحة لكم.';

List<String> textSizeList = ['64px', '32px', '16px'];
List<String> dropDownTitles = [
  'الواجهة الرئيسية',
  'الأخبار',
  'المقالات',
  'البودكاست',
  'قوائمك'
];
