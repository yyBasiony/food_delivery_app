import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';

class CustomFoodItems extends StatelessWidget {
  const CustomFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 55,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffECF0F1),
                image: const DecorationImage(image: AssetImage(AssetData.coffeeCup))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 55,
            height: 60,
            decoration: BoxDecoration(
                color: const Color(0xffD35400),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage(AssetData.food))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 55,
            height: 60,
            decoration: BoxDecoration(
                color: const Color(0xffECF0F1),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage(AssetData.cake))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 55,
            height: 60,
            decoration: BoxDecoration(
                color: const Color(0xffECF0F1),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage(AssetData.snack))),
          ),
        ),
      ],
    );
  }
}
