import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import 'order_item.dart';
import 'restaurant_details.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Order Restaurant")),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            RestaurantDetails(
                rating: '4.5',
                reviews: '200',
                address: '123 Main St',
                openStatus: 'Open Now',
                name: 'Food Order Restaurant',
                imageUrl: AssetData.burger),
            SizedBox(height: 10),
            OrderItem(imageUrl: AssetData.burger, title: 'Hamburger Lover', price: '15.39'),
          ],
        ),
      ),
    );
  }
}
