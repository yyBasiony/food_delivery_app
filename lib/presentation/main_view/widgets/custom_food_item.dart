import 'package:flutter/material.dart';
import '../../resources/assets_data.dart';

class CustomFoodItems extends StatefulWidget {
  const CustomFoodItems({super.key});

  @override
  State<CustomFoodItems> createState() => _CustomFoodItemsState();
}

class _CustomFoodItemsState extends State<CustomFoodItems> {
  int? selectedIndex;

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildFoodItem(0, AssetData.coffeeCup, const Color(0xffECF0F1), "Drink"),
        buildFoodItem(1, AssetData.food, const Color(0xffECF0F1), "Food"),
        buildFoodItem(2, AssetData.cake, const Color(0xffECF0F1), "Cake"),
        buildFoodItem(3, AssetData.snack, const Color(0xffECF0F1), "Snack"),
      ],
    );
  }

  Widget buildFoodItem(
      int index, String imagePath, Color defaultColor, String label) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          onItemTap(index);
        },
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectedIndex == index
                    ? const Color(0xffD35400)
                    : defaultColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
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
