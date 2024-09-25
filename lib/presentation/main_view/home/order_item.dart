import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int quantity;
  final VoidCallback onAdd;

  const OrderItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.quantity,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl, width: 50, height: 50),
      title: Text(title),
      subtitle: Text('\$$price'),
      trailing: IconButton(
        icon: const Icon(Icons.add_circle_outline),
        onPressed: onAdd,
      ),
    );
  }
}
