import 'package:articles/core/constants/colors.dart';
import 'package:articles/model/settings/jobs_description_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../model/settings/saved_cat_model.dart';
import '../../model/settings/settings_sections.dart';

//settings sections data
List<SettingsSectionModel> settingsSections = [
  SettingsSectionModel(id: 1, sectionName: "الوظائف", icon: Icons.work_outline),
  SettingsSectionModel(
      id: 2, sectionName: "المحفوظات", icon: Icons.bookmark_outline),
  SettingsSectionModel(
      id: 3, sectionName: "الاهتمامات", icon: Icons.favorite_outline),
  SettingsSectionModel(
      id: 4, sectionName: "السجلات", icon: Icons.history_outlined),
  SettingsSectionModel(
      id: 5, sectionName: "البوابة الاعلانية", icon: Icons.campaign_outlined),
  SettingsSectionModel(id: 1, sectionName: "الاعدادات", icon: Icons.settings),
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
  'صحة',
  'اعلام',
  'سياحة',
  'تسويق',
  'رياضة',
  'ازياء',
  ''
];
