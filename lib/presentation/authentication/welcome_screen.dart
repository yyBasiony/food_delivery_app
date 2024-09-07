import 'package:flutter/material.dart';

import '../resources/app_constants.dart';
import '../resources/assets_data.dart';
import '../resources/routes.dart';
import 'widget/custom_divider.dart';
import 'widget/custom_images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.welcomeBackground,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(AssetData.burger, width: 400, height: 400, fit: BoxFit.cover),
                  ),
                ),
                ElevatedButton(child: const Text('Login'), onPressed: () => Navigator.pushNamed(context, Routes.loginScreen)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, Routes.registerScreen),
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: const Color(0xFFF6F4F4)),
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
          const CustomDivider(),
          const CustomImages()
        ],
      ),
    );
  }
}
