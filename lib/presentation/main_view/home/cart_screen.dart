import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../widgets/order_item.dart';
import 'checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  OrderItem(
                    title: 'Hamburger Lover',
                    price: 15.50,
                    imageUrl: AssetData.burger,
                  ),
                  OrderItem(
                    title: 'Fried Spicy Chicken Wings',
                    price: 37.99,
                    imageUrl: AssetData.burger,
                  ),
                  OrderItem(
                    title: 'Tuna Salad',
                    price: 7.99,
                    imageUrl: AssetData.burger,
                  ),
                  OrderItem(
                    title: 'Mushroom Pizza',
                    price: 14.99,
                    imageUrl: AssetData.burger,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: ElevatedButton(
                onPressed: () {
                  double total = 100;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(total: total),
                    ),
                  );
                },
                child: Text(
                  'Checkout',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
