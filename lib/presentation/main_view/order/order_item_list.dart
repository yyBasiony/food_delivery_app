import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import 'order_item.dart';

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildOrderItem('Hamburger', AssetData.testImage, 11.99),
          buildOrderItem('Tuna Salad', AssetData.testImage, 8.99),
          buildOrderItem('Chicken Fried', AssetData.testImage, 12.99),
          buildOrderItem('Spaghetti', AssetData.testImage, 7.99),
        ],
      ),
    );
  }
}
