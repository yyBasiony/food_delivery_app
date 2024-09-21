import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';

class ReviewScreenOrder extends StatefulWidget {
  const ReviewScreenOrder({Key? key}) : super(key: key);

  @override
  _ReviewScreenOrderState createState() => _ReviewScreenOrderState();
}

class _ReviewScreenOrderState extends State<ReviewScreenOrder> {
  List<bool> liked = [false, false, false, false];
  List<bool> disliked = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Food'),
        leading: const CustomIconButtonBack(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            const SizedBox(height: 16),
            ElevatedButton(child: const Text('Send'), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget buildFoodItem(BuildContext context, String name, String imagePath,
      double price, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.thumb_up_alt_outlined,
              color: liked[index] ? Colors.orange : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                liked[index] = !liked[index];
                if (liked[index]) {
                  disliked[index] = false;
                }
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.thumb_down_alt_outlined,
              color: disliked[index] ? Colors.orange : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                disliked[index] = !disliked[index];
                if (disliked[index]) {
                  liked[index] = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
