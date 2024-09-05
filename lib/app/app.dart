import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/routes.dart';
class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
