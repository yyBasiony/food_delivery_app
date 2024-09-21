import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';
import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/routes.dart';
import 'order_header.dart';
import 'order_item_list.dart';
import 'order_summary.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconButtonBack(),
        title: const Text('Order Details'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.qr_code,
              size: 35,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              ElevatedButton(
                child: const Text('Order Again'),
                onPressed: () {},
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                child: const Text('Review'),
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.ReviewScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShipperInfo extends StatelessWidget {
  const ShipperInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(AssetData.splash),
          radius: 35,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hank Harlow',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.black),
            ),
            Text(
              'Shipper - Delivered',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            IconButton(
              icon: const Icon(
                Icons.call,
                size: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.message,
                size: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
