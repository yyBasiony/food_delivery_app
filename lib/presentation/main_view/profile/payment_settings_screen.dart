import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class PaymentSettingsScreen extends StatelessWidget {
  const PaymentSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('This is the Payment Settings screen')),
      appBar: AppBar(leading: const CustomAppBar(), title: const Text('Payment Settings')),
    );
  }
}
