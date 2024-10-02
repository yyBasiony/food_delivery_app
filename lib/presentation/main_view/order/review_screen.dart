import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';

class ReviewScreenOrder extends StatefulWidget {
  const ReviewScreenOrder({super.key});

  @override
  State<ReviewScreenOrder> createState() => _ReviewScreenOrderState();
}

class _ReviewScreenOrderState extends State<ReviewScreenOrder> {
  List<bool> liked = [false, false, false, false];
  List<bool> disliked = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Review Food',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: AppColors.black)),
          leading: const CustomIconButtonBack()),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildFoodItem(context, 'Hamburger Lover', AssetData.testImage,
                      15.50, 0),
                  buildFoodItem(context, 'Fried Spicy Chicken Wings',
                      AssetData.testImage, 27.99, 1),
                  buildFoodItem(
                      context, 'Tuna Salad', AssetData.testImage, 7.99, 2),
                  buildFoodItem(
                      context, 'Mushroom Pizza', AssetData.testImage, 14.99, 3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  ElevatedButton(child: const Text('Send'), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFoodItem(BuildContext context, String name, String imagePath,
      double price, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(imagePath,
                    width: 60, height: 60, fit: BoxFit.cover)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: Correctly.itemName.copyWith(color: AppColors.black)),
                Text('\$$price',
                    style: Correctly.itemColor
                        .copyWith(color: AppColors.primaryColor)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.thumb_up_alt_outlined,
                color: liked[index] ? AppColors.primaryColor : Colors.grey),
            onPressed: () => setState(() {
              liked[index] = !liked[index];
              if (liked[index]) disliked[index] = false;
            }),
          ),
          IconButton(
            icon: Icon(Icons.thumb_down_alt_outlined,
                color: disliked[index] ? AppColors.primaryColor : Colors.grey),
            onPressed: () => setState(() {
              disliked[index] = !disliked[index];
              if (disliked[index]) liked[index] = false;
            }),
          ),
        ],
      ),
    );
  }
}
