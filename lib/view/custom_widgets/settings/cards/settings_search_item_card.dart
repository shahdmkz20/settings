import 'package:flutter/material.dart';

class SettingsSearchItemCard extends StatelessWidget {
  final String text;
  const SettingsSearchItemCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10), child: Icon(Icons.history)),
          Text(text),
          Spacer(),
          Icon(Icons.close),
        ],
      ),
    );
  }
}

class SettingsSearchItemCardList extends StatelessWidget {
  final List<String> latestSearchs;
  const SettingsSearchItemCardList({super.key, required this.latestSearchs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: latestSearchs.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SettingsSearchItemCard(
            text: latestSearchs[index],
          );
        });
  }
}
