import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';

class ReviewItem extends StatelessWidget {
  final String name;
  final String review;
  final String image;

  const ReviewItem({
    required this.name,
    required this.review,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextTheme.label1),
                const SizedBox(height: 4),
                Text(review, style: AppTextTheme.label11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
