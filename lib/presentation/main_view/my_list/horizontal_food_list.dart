import 'package:flutter/material.dart';
import '../../resources/assets_data.dart';

class HorizontalFoodItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  const HorizontalFoodItem({super.key, 
    required this.imageUrl,
    required this.name,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class HorizontalFoodList extends StatelessWidget {
  const HorizontalFoodList({super.key});
  final List<Map<String, dynamic>> foodItems = const [
    {
      'imageUrl': AssetData.burger,
      'name': 'Hamburger',
      'price': 11.99,
    },
    {
      'imageUrl': AssetData.burger,
      'name': 'Tuna Salad',
      'price': 7.99,
    },
    {
      'imageUrl': AssetData.burger,
      'name': 'Chicken Fried',
      'price': 12.99,
    },
    {
      'imageUrl': AssetData.burger,
      'name': 'Chicken Fried',
      'price': 12.99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: HorizontalFoodItem(
              imageUrl: foodItem['imageUrl'],
              name: foodItem['name'],
              price: foodItem['price'],
            ),
          );
        },
      ),
    );
  }
}
