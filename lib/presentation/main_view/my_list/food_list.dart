import 'package:flutter/material.dart';
import '../../resources/app_constants.dart';
import 'food_item_card.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppConstants.foodItems.length,
      itemBuilder: (context, index) {
        return FoodItemCard(AppConstants.foodItems[index]);
      },
    );
  }
}
