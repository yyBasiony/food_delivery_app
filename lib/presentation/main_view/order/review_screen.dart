import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/asset_data.dart';
import '../widgets/custom_app_bar.dart';

class ReviewScreenOrder extends StatefulWidget {
  const ReviewScreenOrder({super.key});

  @override
  State<ReviewScreenOrder> createState() => _ReviewScreenOrderState();
}

class _ReviewScreenOrderState extends State<ReviewScreenOrder> {
  static final List<({String name, String image, double price, bool? isLiked})>
      _reviewFoodData = [
    (
      name: 'Hamburger Lover',
      image: AssetData.testImage,
      price: 15.50,
      isLiked: null
    ),
    (
      name: 'Fried Spicy Chicken Wings',
      image: AssetData.testImage,
      price: 27.99,
      isLiked: null
    ),
    (
      name: 'Tuna Salad',
      image: AssetData.testImage,
      price: 7.99,
      isLiked: null
    ),
    (
      name: 'Mushroom Pizza',
      image: AssetData.testImage,
      price: 14.99,
      isLiked: null
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Review Food'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _reviewFoodData.length,
                itemBuilder: (_, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(_reviewFoodData[index].image,
                            width: 60, height: 60, fit: BoxFit.cover)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_reviewFoodData[index].name,
                            style: AppTextTheme.itemName
                                .copyWith(color: AppColors.black)),
                        Text('\$${_reviewFoodData[index].price}',
                            style: AppTextTheme.itemColor
                                .copyWith(color: AppColors.primaryColor)),
                      ],
                    ),
                    const Spacer(),
                    _buildReactButton(index),
                    _buildReactButton(index, isLikeButton: false)
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Send')),
          ],
        ),
      ),
    );
  }

  IconButton _buildReactButton(int index, {bool isLikeButton = true}) {
    return IconButton(
      icon: Icon(
          isLikeButton
              ? Icons.thumb_up_alt_outlined
              : Icons.thumb_down_alt_outlined,
          color: ((_reviewFoodData[index].isLiked ?? false) == isLikeButton)
              ? AppColors.primaryColor
              : Colors.grey),
      onPressed: () => setState(() => _reviewFoodData[index] = (
            name: _reviewFoodData[index].name,
            image: _reviewFoodData[index].image,
            price: _reviewFoodData[index].price,
            isLiked: isLikeButton
          )),
    );
  }
}
