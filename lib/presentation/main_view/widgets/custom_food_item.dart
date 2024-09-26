import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';
import '../home/custom_cake_item.dart';
import '../home/custom_drink_item.dart';
import '../home/custom_food_item.dart';
import '../home/custom_snake_item.dart';

class CustomFoodItems extends StatefulWidget {
  const CustomFoodItems({super.key});

  @override
  State<CustomFoodItems> createState() => _CustomFoodItemsState();
}

class _CustomFoodItemsState extends State<CustomFoodItems> {
  int? selectedIndex;

  void onItemTap(int index) {
    setState(() => selectedIndex = index);

    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (_) => const DrinkScreen()));
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (_) => const FoodScreen()));
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (_) => const CakeScreen()));
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (_) => const SnackScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(90),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.foodItems.length,
        itemBuilder: (_, index) => _buildFoodItem(index),
        separatorBuilder: (_, index) => const SizedBox(width: 20),
      ),
    );
  }

  Widget _buildFoodItem(int index) {
    return GestureDetector(
      onTap: () => onItemTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: selectedIndex == index ? const Color(0xffD35400) : const Color(0xffECF0F1),
            ),
            child: Image.asset(AppConstants.foodItems[index].image, fit: BoxFit.contain, color: selectedIndex == index ? Colors.white : Colors.black),
          ),
          Text(AppConstants.foodItems[index].label, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}
