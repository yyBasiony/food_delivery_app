import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';
import 'food_item_card.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    final itemCount =
        AppConstants.foodItems.length < AppConstants.foodMenu.length
            ? AppConstants.foodItems.length
            : AppConstants.foodMenu.length;

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) =>
          FoodItemCard(AppConstants.foodMenu[index]),
    );
  }
}
