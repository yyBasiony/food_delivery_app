import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_colors.dart';
import '../../../domain/models/model_food_item.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;

  const FoodItemCard(this.foodItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Image.asset(foodItem.imageUrl,
              width: 40, height: 40, fit: BoxFit.cover),
          title: Text(
            foodItem.name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodItem.restaurant),
              Row(
                children: [
                  const Icon(Icons.star,
                      color: AppColors.primaryColor, size: 16),
                  Text(
                    '${foodItem.rating} (${foodItem.reviewsCount})',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Text(
                '${foodItem.deliveryTime} • ${foodItem.distance}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          trailing: Text(
            '\$${foodItem.price.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
