import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
import 'package:food_delivery/presentation/resources/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(AppColor.durationspl, () {
      Navigator.pushReplacementNamed(
        context,
        Routes.onboardingRoute,
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
