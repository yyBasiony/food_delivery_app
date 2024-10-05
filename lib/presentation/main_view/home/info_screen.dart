import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';

import '../../resources/app_colors.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('+1 123 987 765',
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: AppColors.grey)),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: Text('foodorder@gmail.com',
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: AppColors.grey)),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text('Custom Address',
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: AppColors.grey)),
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: Text('Average Cost: \$10-50',
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: AppColors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
