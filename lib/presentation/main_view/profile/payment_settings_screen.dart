import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class PaymentSettingsScreen extends StatelessWidget {
  const PaymentSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'This is the Payment Settings screen',
        style: Theme.of(context).textTheme.titleMedium,
      )),
      appBar: AppBar(
          leading: const CustomAppBar(),
          title: Text(
            'Payment Settings',
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
