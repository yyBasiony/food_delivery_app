import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';

class DividerWithImage extends StatelessWidget {
  const DividerWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Divider(thickness: 1, color: AppColors.divider),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Or connect with',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.divider),
                ),
              ),
            ],
          ),
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 75, width: 140, child: Image.asset(AssetData.pngItem)),
            const SizedBox(width: 90),
            SizedBox(height: 50, width: 50, child: Image.asset(AssetData.facebook)),
            const SizedBox(width: 20),
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipOval(child: Image.asset(AssetData.google, fit: BoxFit.cover, width: 50, height: 50)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
