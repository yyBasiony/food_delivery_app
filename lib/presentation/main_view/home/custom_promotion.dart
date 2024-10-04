import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';

import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';
import 'discount_screen.dart';

class CustomFoodPromotion extends StatelessWidget {
  const CustomFoodPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const DiscountScreen())),
          child: Container(
            height: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AssetData.burger))),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text('Sale Off\n50% For Breakfast',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('For Breakfast',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.black)),
              GestureDetector(
                  onTap: () {},
                  child: Text('See all',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: AppColors.primaryColor))),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildFoodItem('Hamburger', AssetData.burger),
              _buildFoodItem('Tuna Salad', AssetData.burger),
              _buildFoodItem('Chicken Fried', AssetData.burger),
              _buildFoodItem('Spaghetti', AssetData.burger),
              _buildFoodItem('Lamb Chops', AssetData.burger),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFoodItem(String title, String imagePath) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(imagePath,
                width: 80, height: 60, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center, style: Correctly.itemName),
        ],
      ),
    );
  }
}
