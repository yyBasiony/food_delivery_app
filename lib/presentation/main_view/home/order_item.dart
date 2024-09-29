import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';

class OrderItem extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;

  const OrderItem({super.key, required this.title, required this.price, required this.imageUrl});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int quantity = 0;

  void _increaseQuantity() => setState(() => quantity++);

  void _decreaseQuantity() {
    if (quantity > 0) setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title, style: Correctly.label1),
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      subtitle: Text('\$${widget.price}', style: Correctly.label11),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (quantity > 0) IconButton(icon: const Icon(Icons.remove_circle_outline), onPressed: _decreaseQuantity),
          Text('$quantity'),
          IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: _increaseQuantity),
        ],
      ),
    );
  }
}
