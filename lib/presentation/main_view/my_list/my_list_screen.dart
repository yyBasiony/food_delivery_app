import 'package:flutter/material.dart';

import '../../../domain/models/model_food_item.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/app_theme.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/scrollable_food_list.dart';
import '../widgets/custom_food_item.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(decoration: const InputDecoration(hintText: 'Search', prefixIcon: Icon(Icons.search))),
            const Column(children: [CustomFoodItems(), ScrollableFoodList()]),
            Expanded(child: _buildFoodList()),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodList() {
    final itemCount = AppConstants.foodItems.length < AppConstants.foodMenu.length ? AppConstants.foodItems.length : AppConstants.foodMenu.length;

    return ListView.builder(
        itemCount: itemCount, itemBuilder: (context, index) => _buildFoodItemCard(AppConstants.foodMenu[index], context: context));
  }

  Widget _buildFoodItemCard(FoodItem foodItem, {required BuildContext context}) {
    return SizedBox(
      height: 140,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Image.asset(foodItem.imageUrl, width: 40, height: 40, fit: BoxFit.cover),
          title: Text(foodItem.name, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodItem.restaurant, style: context.textTheme.labelMedium?.copyWith(color: AppColors.grey)),
              Row(
                children: [
                  const Icon(Icons.star, color: AppColors.primaryColor, size: 16),
                  Text('${foodItem.rating} (${foodItem.reviewsCount})', style: AppTextTheme.itemName),
                ],
              ),
              Text('${foodItem.deliveryTime} • ${foodItem.distance}', style: context.textTheme.bodySmall),
            ],
          ),
          trailing: Text('\$${foodItem.price.toStringAsFixed(2)}', style: AppTextTheme.itemColor),
        ),
      ),
    );
  }
}
