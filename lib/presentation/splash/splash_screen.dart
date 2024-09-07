import 'package:flutter/material.dart';

import '../resources/app_constants.dart';
import '../resources/assets_data.dart';
import '../resources/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(AppConstants.splashDuration, () => Navigator.pushReplacementNamed(context, Routes.onboardingScreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.splashBackground,
      body: Center(child: Image.asset(AssetData.splash)),
    );
  }
}
