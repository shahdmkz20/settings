import 'package:flutter/material.dart';

class SettingsSearchItemCard extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const SettingsSearchItemCard({super.key, required this.text, this.onTap});

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
          InkWell(onTap: onTap, child: Icon(Icons.close)),
        ],
      ),
    );
  }
}

class SettingsSearchItemCardList extends StatelessWidget {
  final List<String> latestSearchs;
  final void Function(int)? onTap;
  const SettingsSearchItemCardList(
      {super.key, required this.latestSearchs, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: latestSearchs.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SettingsSearchItemCard(
            text: latestSearchs[index],
            onTap: () {
              if (onTap != null) {
                onTap!(index);
              }
            },
          );
        });
  }
}
