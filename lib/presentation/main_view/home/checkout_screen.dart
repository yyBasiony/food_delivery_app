import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';
import '../widgets/custom_app_bar.dart';

class CheckoutScreen extends StatelessWidget {
  final double total;

  const CheckoutScreen({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkout'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivery Address:',
                style: context.textTheme.headlineMedium
                    ?.copyWith(color: AppColors.black)),
            const SizedBox(height: 10),
            Text('1234 Main Street, New York City, NY',
                style: context.textTheme.titleSmall
                    ?.copyWith(color: AppColors.grey)),
            const SizedBox(height: 20),
            Text('Order Items:',
                style: context.textTheme.headlineMedium
                    ?.copyWith(color: AppColors.black)),
            const SizedBox(height: 10),
            _buildOrderItem('Ceramics workshop', total),
            const SizedBox(height: 20),
            Text('Payment Method:',
                style: context.textTheme.headlineMedium
                    ?.copyWith(color: AppColors.black)),
            RadioListTile(
                value: 'PayPal',
                groupValue: 'payment',
                onChanged: (value) {},
                title: const Text('PayPal')),
            RadioListTile(
                value: 'Credit Card',
                groupValue: 'payment',
                onChanged: (value) {},
                title: const Text('Credit Card')),
            RadioListTile(
                value: 'Cash',
                groupValue: 'payment',
                onChanged: (value) {},
                title: const Text('Cash on Delivery')),
            const Spacer(),
            Text('Total: \$${total.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
                backgroundColor: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Place Order',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: AppColors.secondary)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(String name, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(name), Text('\$${price.toStringAsFixed(2)}')]),
    );
  }
}
