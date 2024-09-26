import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final double total;

  CheckoutScreen({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery Address:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('1234 Main Street, New York City, NY'),
            const SizedBox(height: 20),
            const Text(
              'Order Items:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildOrderItem('Ceramics workshop Event', total),
            SizedBox(height: 20),
            const Text(
              'Payment Method:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              value: 'PayPal',
              groupValue: 'payment',
              onChanged: (value) {},
              title: Text('PayPal'),
            ),
            RadioListTile(
              value: 'Credit Card',
              groupValue: 'payment',
              onChanged: (value) {},
              title: Text('Credit Card'),
            ),
            RadioListTile(
              value: 'Cash',
              groupValue: 'payment',
              onChanged: (value) {},
              title: Text('Cash on Delivery'),
            ),
            Spacer(),
            Text(
              'Total: \$${total.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Place Order'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
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
