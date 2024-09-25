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
  void dispose() => {_timer.cancel(), super.dispose()};

  @override
  void initState() => {_startTimer(), super.initState()};

  void _startTimer() =>
      _timer = Timer(const Duration(seconds: 3), () => _goNextScreen());

  void _goNextScreen() =>
      Navigator.pushReplacementNamed(context, Routes.onboardingScreen);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: Center(child: Image.asset(AssetData.splash)),
    );
  }
}
