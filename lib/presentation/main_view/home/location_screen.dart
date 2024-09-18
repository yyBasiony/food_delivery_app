import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';
import '../../resources/routes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(AssetData.map)),
            const SizedBox(height: 20),
            const Text('Set your location to start exploring restaurants around you'),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: const Text('Enable Location')),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.mainView),
              style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: AppColors.secondary),
              child: const Text('No, I do it later'),
            ),
          ],
        ),
      ),
    );
  }
}
