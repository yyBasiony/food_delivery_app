import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/assets_data.dart';

class HorizontalFoodItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  const HorizontalFoodItem({
    super.key,
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
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child:
                Image.asset(imageUrl, width: 70, height: 70, fit: BoxFit.cover),
          ),
          Text(name,
              style: Correctly.itemName.copyWith(color: AppColors.black)),
          Text('\$${price.toStringAsFixed(2)}',
              style:
                  Correctly.itemColor.copyWith(color: AppColors.primaryColor)),
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
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (_, index) {
          final foodItem = foodItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: HorizontalFoodItem(
                name: foodItem['name'],
                price: foodItem['price'],
                imageUrl: foodItem['imageUrl']),
          );
        },
      ),
    );
  }
}
