import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/onboarding/page_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
     Future.delayed( const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
         MaterialPageRoute(builder: (context) => const POnboardingView()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe6dcc1),
      body: Center(
        child: Image.asset('assets/images/splash.jpeg'),
      ),
    );
  }
}
