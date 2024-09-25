import 'package:flutter/material.dart';
import '../../resources/app_text_theme.dart';

class OrderItem extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;

  const OrderItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int quantity = 0;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      title: Text(widget.title, style: AppTextTheme.label1),
      subtitle: Text('\$${widget.price}', style: AppTextTheme.label11),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (quantity > 0)
            IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: _decreaseQuantity),
          Text('$quantity'),
          IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: _increaseQuantity),
        ],
      ),
    );
  }
}
