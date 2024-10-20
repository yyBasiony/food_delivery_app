import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_colors.dart';
import 'package:food_delivery/presentation/resources/theme/app_theme.dart';

class FoodItemWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const FoodItemWidget({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
            const SizedBox(height: 3),
            Text(title,
                textAlign: TextAlign.center,
                style: context.textTheme.labelSmall
                    ?.copyWith(color: AppColors.black)),
          ],
        ),
      ),
    );
  }
}
