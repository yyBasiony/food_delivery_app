import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';

class CustomFoodItems extends StatelessWidget {
  const CustomFoodItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffECF0F1),
                image: DecorationImage(image: AssetImage(AssetData.coffeecup))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffD35400),
                image: DecorationImage(image: AssetImage(AssetData.food))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffECF0F1),
                image: DecorationImage(image: AssetImage(AssetData.cake))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffECF0F1),
                image: DecorationImage(image: AssetImage(AssetData.snack))),
          ),
        ),
      ],
    );
  }
}
