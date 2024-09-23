import 'package:flutter/material.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/assets_data.dart';
import '../../resources/routes.dart';
import 'order_header.dart';
import 'order_item_list.dart';
import 'order_summary.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        leading: const CustomIconButtonBack(),
        actions: [IconButton(icon: const Icon(Icons.qr_code, size: 35), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OrderHeader(),
              const SizedBox(height: 16),
              const ShipperInfo(),
              const SizedBox(height: 16),
              const OrderItemsList(),
              const SizedBox(height: 16),
              const OrderSummary(),
              const SizedBox(height: 16),
              ElevatedButton(child: const Text('Order Again'), onPressed: () {}),
              const SizedBox(height: 8),
              ElevatedButton(child: const Text('Review'), onPressed: () => Navigator.pushNamed(context, Routes.reviewScreen)),
            ],
          ),
        ),
      ),
    );
  }
}

class ShipperInfo extends StatelessWidget {
  const ShipperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 35, backgroundImage: AssetImage(AssetData.splash)),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hank Harlow', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('Shipper - Delivered', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            IconButton(icon: const Icon(Icons.call, size: 24), onPressed: () {}),
            IconButton(icon: const Icon(Icons.message, size: 24), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
