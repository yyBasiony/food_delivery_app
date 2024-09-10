import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';

class CustomImages extends StatelessWidget {
  const CustomImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: 80, width: 120, child: Image.asset(AssetData.pngltem)),
        const SizedBox(width: 90),
        SizedBox(height: 40, width: 40, child: Image.asset(AssetData.facebook)),
        const SizedBox(width: 20),
        SizedBox(
          height: 40,
          width: 40,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                AssetData.google,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
