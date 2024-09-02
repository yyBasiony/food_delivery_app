import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/onboarding/onboarding_screen.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(AppColor. durationspl, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe6dcc1),
      body: Center(
        child: Image.asset(AssetData.splash),
      ),
    );
  }
}
