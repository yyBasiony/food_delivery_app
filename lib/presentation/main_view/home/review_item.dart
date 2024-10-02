import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';

class ReviewItem extends StatelessWidget {
  final String name;
  final String review;
  final String image;

  const ReviewItem({
    super.key,
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
                Text(name, style: Correctly.itemColor),
                const SizedBox(height: 4),
                Text(review, style: Correctly.itemColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
