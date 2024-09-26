import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/assets_data.dart';
import '../resources/routes.dart';
import 'widget/divider_with_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Spacer(flex: 2),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(AssetData.burger, width: 285, height: 285, fit: BoxFit.cover),
                  ),
                  const Spacer(flex: 2),
                  ElevatedButton(child: const Text('Login'), onPressed: () => Navigator.pushNamed(context, Routes.loginScreen)),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, Routes.registerScreen),
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: AppColors.secondary),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
          const DividerWithImage()
        ],
      ),
    );
  }
}
