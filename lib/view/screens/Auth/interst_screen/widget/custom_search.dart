import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 1),
              labelText: 'ابحث عن اهتمامك',
              labelStyle: styleRegular16,
              prefixIcon:
                  IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff282828)),
              ),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff282828)))),
          onChanged: (query) {},
        ),
      ),
    );
  }
}
