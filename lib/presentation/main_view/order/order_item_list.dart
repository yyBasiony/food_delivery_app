import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/assets_data.dart';

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildOrderItem('Hamburger', AssetData.testImage, 11.99),
          buildOrderItem('Tuna Salad', AssetData.testImage, 8.99),
          buildOrderItem('Chicken Fried', AssetData.testImage, 12.99),
          buildOrderItem('Spaghetti', AssetData.testImage, 7.99),
        ],
      ),
    );
  }
}

Widget buildOrderItem(String name, String imagePath, double price) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(imagePath,
                width: 80, height: 80, fit: BoxFit.cover)),
        const SizedBox(height: 4),
        Text(name, style: Correctly.itemName.copyWith(color: AppColors.black)),
        Text('\$$price',
            style: Correctly.itemColor.copyWith(color: AppColors.primaryColor)),
      ],
    ),
  );
}
