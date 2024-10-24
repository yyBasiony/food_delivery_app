import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';

class FoodItemWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const FoodItemWidget({super.key, required this.title, required this.imagePath});

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
            Text(title, textAlign: TextAlign.center, style: context.textTheme.labelSmall?.copyWith(color: AppColors.black)),
          ],
        ),
      ),
    );
  }
}
