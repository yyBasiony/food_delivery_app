import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';

import '../../../domain/models/model_food_item.dart';
import '../../resources/app_colors.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;
  const FoodItemCard(this.foodItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Image.asset(foodItem.imageUrl,
              width: 40, height: 40, fit: BoxFit.cover),
          title: Text(foodItem.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: AppColors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodItem.restaurant,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColors.grey)),
              Row(
                children: [
                  const Icon(Icons.star,
                      color: AppColors.primaryColor, size: 16),
                  Text('${foodItem.rating} (${foodItem.reviewsCount})',
                      style: Correctly.itemName),
                ],
              ),
              Text('${foodItem.deliveryTime} • ${foodItem.distance}',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          trailing: Text('\$${foodItem.price.toStringAsFixed(2)}',
              style: Correctly.itemColor),
        ),
      ),
    );
  }
}
