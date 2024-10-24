import 'package:flutter/material.dart';

import '../../../resources/theme/app_theme.dart';
import '../../widgets/custom_app_bar.dart';

class PaymentSettingsScreen extends StatelessWidget {
  const PaymentSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Payment Settings'),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('This is the Payment Settings screen', textAlign: TextAlign.center, style: context.textTheme.titleMedium),
                const Spacer(flex: 1),
                Flexible(
                  child: SizedBox(
                    width: constraints.maxWidth * .8,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16)),
                      child: const Text('Proceed to Payment'),
                    ),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          );
        },
      ),
    );
  }
}
