import 'package:flutter/material.dart';

class SettingsModel {
  final int listId;
  final IconData icon;
  final String name;

  SettingsModel(
      {required this.listId, this.icon = Icons.settings, required this.name});
}
