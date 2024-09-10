import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';

import 'widget/custom_icon_bottom_back.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomIconButtonBack()),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text('Forgot\nPassword',
                style: AppTheme.getLightTheme().textTheme.headlineMedium),
            const SizedBox(height: 20),
            TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Enter email')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {}, child: const Text('Reset password'))
          ],
        ),
      ),
    );
  }
}
