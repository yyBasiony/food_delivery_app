import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.bachgrowelcom,
      body: Column(
        children: [
          Image.asset(AssetData.burger),
        ],

      ),
    );
  }
}
