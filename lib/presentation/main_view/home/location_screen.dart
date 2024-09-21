import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';
import '../../resources/routes.dart';
import '../custom_bottom_navigation_bar.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AssetData.map)),
            const SizedBox(height: 40),
            Text(
              textAlign: TextAlign.center,
              'Set your location to start exploring restaurants around you',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: AppColors.Bblack),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {}, child: const Text('Enable Location')),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.mainView),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: AppColors.secondary),
              child: const Text('No, I do it later'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
