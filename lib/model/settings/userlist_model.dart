import 'package:flutter/material.dart';

class UserlistModel {
  final int listId;
  final IconData icon;
  final String name;

  UserlistModel(
      {required this.listId, this.icon = Icons.new_label, required this.name});
}

List<UserlistModel> userList = [
  UserlistModel(listId: 1, icon: Icons.adjust_outlined, name: "فريلانس"),
  UserlistModel(listId: 2, icon: Icons.work_history_outlined, name: "للعمل"),
  UserlistModel(listId: 3, icon: Icons.favorite_outline_outlined, name: "شخصي"),
  UserlistModel(listId: 4, icon: Icons.history_outlined, name: "فيما بعد"),
];
