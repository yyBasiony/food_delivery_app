import 'package:flutter/material.dart';

import '../../../domain/models/order_item.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';

class CustomOrderItem extends StatefulWidget {
  final OrderItem order;

  const CustomOrderItem({super.key, required this.order});

  @override
  State<CustomOrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<CustomOrderItem> {
  int quantity = 0;

  void _increaseQuantity() => setState(() => quantity++);

  void _decreaseQuantity() {
    if (quantity > 0) setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.order.title, style: AppTextTheme.itemColor),
      leading: Image.asset(widget.order.imageUrl, width: 50, height: 50),
      subtitle: Text('\$${widget.order.price}', style: AppTextTheme.itemColor),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (quantity > 0)
            IconButton(
              onPressed: _decreaseQuantity,
              icon: const Icon(Icons.remove_circle_outline, color: AppColors.primaryColor),
            ),
          Text('$quantity'),
          IconButton(
            onPressed: _increaseQuantity,
            icon: const Icon(Icons.add_circle_outline, color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
