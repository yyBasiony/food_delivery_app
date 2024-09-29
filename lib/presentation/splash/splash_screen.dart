import 'dart:async';
import 'package:flutter/material.dart';
import '../resources/app_colors.dart';
import '../resources/assets_data.dart';
import '../resources/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() => {super.initState(), _startTimer()};

  @override
  void dispose() => {_timer.cancel(), super.dispose()};

  void _startTimer() => _timer = Timer(const Duration(seconds: 3), _goNextScreen);

  void _goNextScreen() {
    // TODO: Add Direct Navigation if Onboarding Has been seen
    Navigator.pushReplacementNamed(context, Routes.onboardingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: LayoutBuilder(
        builder: (_, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          return Center(
            child: Image.asset(
              AssetData.splash,
              fit: BoxFit.contain,
              width: screenWidth * .7,
              height: screenHeight * .5,
            ),
          );
        },
      ),
    );
  }
}
