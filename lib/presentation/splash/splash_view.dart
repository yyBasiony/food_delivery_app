import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/splash/widget/splash_body.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
