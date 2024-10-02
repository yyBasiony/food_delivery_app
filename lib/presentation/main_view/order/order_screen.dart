import 'package:flutter/material.dart';
import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/app_colors.dart';
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
        title: Text('Order Details',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.black)),
        leading: const CustomIconButtonBack(),
        actions: [
          IconButton(
              icon: const Icon(Icons.qr_code, size: 35), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: OrderHeader(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ShipperInfo(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: OrderItemsList(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: OrderSummary(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      child: Text('Order Again',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: AppColors.secondary)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      child: Text('Review',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: AppColors.secondary)),
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.reviewScreen),
                    ),
                  ),
                ],
              );
            },
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
        const CircleAvatar(
            radius: 35, backgroundImage: AssetImage(AssetData.splash)),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hank Harlow',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black)),
              Text('Shipper - Delivered',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey)),
            ],
          ),
        ),
        const Spacer(),
        Column(
          children: [
            IconButton(
                icon: const Icon(Icons.call, size: 24), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.message, size: 24), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
