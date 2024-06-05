
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomSliverAppbar extends StatelessWidget {
   CustomSliverAppbar({
    super.key, required this.onPressed,
  });
   void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.only(top: 10, left: Get.width*0.86),
        child: IconButton(
          onPressed:onPressed , 
          icon:  const Icon(Icons.arrow_forward_outlined, size: 25,color: Color(0xff424242),),
        ),
      ),
    );
  }
}