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
    print('Item tapped: $index');

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DrinkScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoodScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CakeScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SnackScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [for (int i = 0; i < 4; ++i) buildFoodItem(i)],
    );
  }

  Widget buildFoodItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => onItemTap(index),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectedIndex == index
                    ? const Color(0xffD35400)
                    : const Color(0xffECF0F1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(
                  AppConstants
                      .foodItems[index].image, // Access the 'image' field
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppConstants.foodItems[index].label, // Access the 'label' field
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
