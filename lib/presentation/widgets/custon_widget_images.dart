import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
class custom_widget_images extends StatelessWidget {
  const custom_widget_images({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            height: 80,
            width: 120,

            child: Image.asset(AssetData.pngltem)),
        const SizedBox(width: 60,),
        Container(
            height: 40,
            width: 40,
            child: Image.asset(AssetData.facebook)),
        const SizedBox(width: 20,),

        Container(
            height: 40,
            width: 40,

            child: Image.asset(AssetData.google)),


      ],
    );
  }
}
