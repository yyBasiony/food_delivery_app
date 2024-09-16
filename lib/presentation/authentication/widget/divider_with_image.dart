import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';

class DividerWithImage extends StatelessWidget {
  const DividerWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Divider(thickness: 1, color: AppColors.divider),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Or connect with'),
              ),
            ],
          ),
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80, width: 120, child: Image.asset(AssetData.pngItem)),
            const SizedBox(width: 90),
            SizedBox(height: 40, width: 40, child: Image.asset(AssetData.facebook)),
            const SizedBox(width: 20),
            SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: ClipOval(child: Image.asset(AssetData.google, fit: BoxFit.cover, width: 40, height: 40)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
