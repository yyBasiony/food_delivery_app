import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/widgets/custom_icon_bottom_back.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const CustomIconBottomback(),
      ),
      body: const Center(child: Text('Login Screen')),
    );
  }
}

