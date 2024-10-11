import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../widgets/custom_app_bar.dart';
import '../../resources/app_constants.dart';

class ReviewScreenOrder extends StatefulWidget {
  const ReviewScreenOrder({super.key});
  @override
  State<ReviewScreenOrder> createState() => _ReviewScreenOrderState();
}

class _ReviewScreenOrderState extends State<ReviewScreenOrder> {
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
                itemCount: AppConstants.reviewFoodData.length,
                itemBuilder: (_, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        AppConstants.reviewFoodData[index].image,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppConstants.reviewFoodData[index].name,
                          style: AppTextTheme.itemName
                              .copyWith(color: AppColors.black),
                        ),
                        Text(
                          '\$${AppConstants.reviewFoodData[index].price}',
                          style: AppTextTheme.itemColor
                              .copyWith(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    _buildReactButton(index),
                    _buildReactButton(index, isLikeButton: false),
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
        color: ((AppConstants.reviewFoodData[index].isLiked ?? false) ==
                isLikeButton)
            ? AppColors.primaryColor
            : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          AppConstants.reviewFoodData[index].isLiked = isLikeButton;
        });
      },
    );
  }
}
