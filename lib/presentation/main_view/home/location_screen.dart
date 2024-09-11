import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../resources/routes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AssetData.map)),
            const SizedBox(height: 20),
            const Text(
              'Set your location to start exploring restaurants around you',
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                child: const Text(
                  'Enable Location',
                ),
                onPressed: () {}),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.homePage),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFF6F4F4)),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
