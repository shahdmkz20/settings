import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserlistModel {
  final int listId;
  final IconData icon;
  final String name;

  UserlistModel({required this.listId, required this.icon, required this.name});
}

List<UserlistModel> userList = [
  UserlistModel(listId: 1, icon: Icons.circle, name: "فريلانس"),
  UserlistModel(listId: 2, icon: Icons.work_history_outlined, name: "للعمل"),
  UserlistModel(listId: 3, icon: Icons.favorite_outline_outlined, name: "شخصي"),
  UserlistModel(listId: 4, icon: Icons.history_outlined, name: "فيما بعد"),
];
