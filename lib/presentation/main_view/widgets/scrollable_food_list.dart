import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_text_theme.dart';

class ScrollableFoodList extends StatelessWidget {
  const ScrollableFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(111),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.foodItemsData.length,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(AppConstants.foodItemsData[index].imageUrl, width: 80, height: 80, fit: BoxFit.cover),
                ),
                Text(AppConstants.foodItemsData[index].name, style: AppTextTheme.itemName.copyWith(color: AppColors.black)),
                Text('\$${AppConstants.foodItemsData[index].price.toStringAsFixed(2)}',
                    style: AppTextTheme.itemColor.copyWith(color: AppColors.primaryColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
