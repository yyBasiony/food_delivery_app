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
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.black)),
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
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: _currentIndex, onTap: (index) => setState(() => _currentIndex = index)),
    );
  }
}
