import 'package:flutter/material.dart';

import '../../authentication/widget/custom_app_bar.dart';

class PaymentSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: const Text('Payment Settings'),
      ),
      body: const Center(
        child: Text('This is the Payment Settings screen'),
      ),
    );
  }
}
