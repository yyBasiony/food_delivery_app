import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';
import '../../resources/asset_data.dart';
import '../../resources/routes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 10),
            ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(12)), child: Image.asset(AssetData.map)),
            const Spacer(flex: 2),
            Text(
                textAlign: TextAlign.center,
                'Set your location to start exploring restaurants around you',
                style: context.textTheme.labelSmall?.copyWith(color: AppColors.black)),
            const Spacer(flex: 3),
            ElevatedButton(onPressed: () {}, child: const Text('Enable Location')),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.mainView),
              style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: AppColors.secondary),
              child: const Text('No, I do it later'),
            ),
            const Spacer(flex: 6),
          ],
        ),
      ),
    );
  }
}
