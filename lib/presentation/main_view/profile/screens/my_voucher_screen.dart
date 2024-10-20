import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_constants.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/theme/app_theme.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/voucher_item.dart';

class MyVoucherScreen extends StatelessWidget {
  const MyVoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Voucher'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: AppConstants.voucherData.length,
              itemBuilder: (_, index) => VoucherItem(
                  title: AppConstants.voucherData[index].title,
                  expiry: AppConstants.voucherData[index].expiry,
                  imageUrl: AppConstants.voucherData[index].image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Use Now',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: AppColors.secondary)),
            ),
          ),
        ],
      ),
    );
  }
}
