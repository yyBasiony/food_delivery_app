import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../../domain/models/voucher_item.dart';
import '../../authentication/widget/custom_app_bar.dart';

class VoucherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: const Text('My Voucher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  VoucherItem(
                    imageUrl: AssetData.pizza,
                    title: 'Sale off 30% for Pizza',
                    expiry: '15 days left',
                  ),
                  VoucherItem(
                    imageUrl: AssetData.burgers,
                    title: 'Sale off 50% Hamburger',
                    expiry: '20 days left',
                    isSelected: true,
                  ),
                  VoucherItem(
                    imageUrl: AssetData.pizza,
                    title: 'Sale off 19% in Pizza Love',
                    expiry: '10 days left',
                  ),
                  VoucherItem(
                    imageUrl: AssetData.noodle,
                    title: 'Sale off 70% Fast Food',
                    expiry: '5 days left',
                  ),
                ],
              ),
            ),
            ElevatedButton(
                child: const Text(
                  'use now',
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
