import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/splash/splash_screen.dart';
class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
