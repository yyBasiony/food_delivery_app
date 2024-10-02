import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../widgets/voucher_item.dart';
import '../../resources/assets_data.dart';
import '../widgets/custom_app_bar.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: Text(
          'My Voucher',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.black),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      VoucherItem(
                        expiry: '15 days left',
                        imageUrl: AssetData.testImage,
                        title: 'Sale off 30% for Pizza',
                      ),
                      VoucherItem(
                          isSelected: true,
                          expiry: '20 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 50% Hamburger'),
                      VoucherItem(
                          expiry: '10 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 19% in Pizza Love'),
                      VoucherItem(
                          expiry: '5 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 70% Fast Food'),
                      VoucherItem(
                          expiry: '5 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 70% Fast Food'),
                      VoucherItem(
                          expiry: '5 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 70% Fast Food'),
                      VoucherItem(
                          expiry: '5 days left',
                          imageUrl: AssetData.testImage,
                          title: 'Sale off 70% Fast Food'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Use Now',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.secondary)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
