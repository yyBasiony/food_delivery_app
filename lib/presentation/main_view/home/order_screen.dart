import 'package:flutter/material.dart';
import '../custom_bottom_navigation_bar.dart';
import 'order_item.dart';
import 'restraurnt_detils.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Order Restaurant")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RestaurantDetails(
              imageUrl: 'assets/images/burger.png',
              name: 'Food Order Restaurant',
              address: '123 Main St',
              rating: '4.5',
              reviews: '200',
              openStatus: 'Open Now',
            ),
            const SizedBox(height: 10),
            OrderItem(
              imageUrl: 'assets/images/burger.png',
              title: 'Hamburger Lover',
              price: '15.39',
              quantity: 2,
              onAdd: () => print('Added'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
