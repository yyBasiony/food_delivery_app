import 'package:flutter/material.dart';

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
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DiscountScreen())),
          child: Container(
            height: 150,
            decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(AssetData.burger))),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text('Sale Off\n50% For Breakfast',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('For Breakfast', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              GestureDetector(onTap: () {}, child: const Text('See all', style: TextStyle(fontSize: 12, color: Colors.orange))),
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
            child: Image.asset(imagePath, width: 80, height: 60, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
