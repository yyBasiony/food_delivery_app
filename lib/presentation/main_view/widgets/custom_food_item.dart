import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';

class CustomFoodItems extends StatefulWidget {
  const CustomFoodItems({super.key});

  @override
  State<CustomFoodItems> createState() => _CustomFoodItemsState();
}

class _CustomFoodItemsState extends State<CustomFoodItems> {
  int? selectedIndex;

  void onItemTap(int index) => setState(() => selectedIndex = index);

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
                color: selectedIndex == index ? const Color(0xffD35400) : const Color(0xffECF0F1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(AppConstants.foodItems[index].image, fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 8),
            Text(AppConstants.foodItems[index].label, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
