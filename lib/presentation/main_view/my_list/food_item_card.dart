import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_colors.dart';
import '../../../domain/models/model_food_item.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;

  const FoodItemCard(this.foodItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(foodItem.imageUrl,
            width: 60, height: 60, fit: BoxFit.cover),
        title: Text(
          foodItem.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(foodItem.restaurant),
            Row(
              children: [
                const Icon(Icons.star, color: AppColors.primaryColor, size: 16),
                Text(
                  '${foodItem.rating} (${foodItem.reviewsCount})',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Text('${foodItem.deliveryTime} • ${foodItem.distance}'),
          ],
        ),
        trailing: Text('\$${foodItem.price.toStringAsFixed(2)}'),
      ),
    );
  }
}
