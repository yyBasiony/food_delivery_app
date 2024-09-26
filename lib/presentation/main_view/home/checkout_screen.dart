import 'package:flutter/material.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/app_colors.dart';

class CheckoutScreen extends StatelessWidget {
  final double total;

  CheckoutScreen({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconButtonBack(),
        title: const Text('Checkout'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery Address:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('1234 Main Street, New York City, NY'),
            const SizedBox(height: 20),
            const Text(
              'Order Items:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildOrderItem('Ceramics workshop', total),
            const SizedBox(height: 20),
            const Text(
              'Payment Method:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              value: 'PayPal',
              groupValue: 'payment',
              onChanged: (value) {},
              title: const Text('PayPal'),
            ),
            RadioListTile(
              value: 'Credit Card',
              groupValue: 'payment',
              onChanged: (value) {},
              title: const Text('Credit Card'),
            ),
            RadioListTile(
              value: 'Cash',
              groupValue: 'payment',
              onChanged: (value) {},
              title: const Text('Cash on Delivery'),
            ),
            const Spacer(),
            Text(
              'Total: \$${total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Place Order'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(String name, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text('\$${price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
