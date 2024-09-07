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
        const SizedBox(width: 50),
        SizedBox(height: 40, width: 40, child: Image.asset(AssetData.facebook)),
        const SizedBox(width: 10),
        SizedBox(height: 40, width: 40, child: Image.asset(AssetData.google)),
      ],
    );
  }
}
