import 'package:flutter/material.dart';

import '../widgets/voucher_item.dart';
import '../../resources/assets_data.dart';
import '../widgets/custom_app_bar.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomAppBar(), title: const Text('My Voucher')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  VoucherItem(expiry: '15 days left', imageUrl: AssetData.pizza, title: 'Sale off 30% for Pizza'),
                  VoucherItem(isSelected: true, expiry: '20 days left', imageUrl: AssetData.burgers, title: 'Sale off 50% Hamburger'),
                  VoucherItem(expiry: '10 days left', imageUrl: AssetData.pizza, title: 'Sale off 19% in Pizza Love'),
                  VoucherItem(expiry: '5 days left', imageUrl: AssetData.noodle, title: 'Sale off 70% Fast Food'),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('use now')),
          ],
        ),
      ),
    );
  }
}
