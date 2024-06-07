import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';

class UserlistModel {
  final int listId;
  final IconData icon;
  final String title;
  final Color color;

  UserlistModel(
      {required this.listId,
      this.icon = Icons.new_label,
      required this.title,
      this.color = AppColors.textGreyColor});
}

List<UserlistModel> userMenuList = [
  UserlistModel(
      listId: 1,
      icon: Icons.adjust_outlined,
      title: "فريلانس",
      color: AppColors.successColor),
  UserlistModel(
      listId: 2,
      icon: Icons.work_history_outlined,
      title: "للعمل",
      color: AppColors.colorOrange),
  UserlistModel(
      listId: 3,
      icon: Icons.favorite_outline_outlined,
      title: "شخصي",
      color: AppColors.colorTex1),
  UserlistModel(
      listId: 4,
      icon: Icons.history_outlined,
      title: "الحياة",
      color: Colors.pinkAccent),
  UserlistModel(
      listId: 5,
      icon: Icons.history_outlined,
      title: "فيما بعد",
      color: AppColors.dangerColor),
];
