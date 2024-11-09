import 'package:flutter/material.dart';
import '../../../domain/models/meal_model.dart';
import '../../../domain/models/order_item.dart';
import '../../resources/asset_data.dart';
import '../../resources/theme/app_theme.dart';
import '../widgets/custom_order_item.dart';
import 'checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // TODO: Should be dynamic not repeated
                  CustomOrderItem(
                    order: OrderItem(
                      quantity: 1,
                      meal: Meal(
                        name: 'Hamburger Lover',
                        price: 15.50,
                        rating: 4.5,
                        imageUrl: AssetData.burger,
                      ),
                    ),
                  ),
                  CustomOrderItem(
                    order: OrderItem(
                      quantity: 1,
                      meal: Meal(
                        name: 'Fried Spicy Chicken Wings',
                        price: 37.99,
                        rating: 4.7,
                        imageUrl: AssetData.burger,
                      ),
                    ),
                  ),
                  CustomOrderItem(
                    order: OrderItem(
                      quantity: 1,
                      meal: Meal(
                        name: 'Tuna Salad',
                        price: 7.99,
                        rating: 4.3,
                        imageUrl: AssetData.burger,
                      ),
                    ),
                  ),
                  CustomOrderItem(
                    order: OrderItem(
                      quantity: 1,
                      meal: Meal(
                        name: 'Mushroom Pizza',
                        price: 14.99,
                        rating: 4.6,
                        imageUrl: AssetData.burger,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const CheckoutScreen(total: 100))),
                child: Text('Checkout',
                    style: context.textTheme.headlineMedium
                        ?.copyWith(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
