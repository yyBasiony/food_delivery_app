import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/theme/app_theme.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/voucher_item.dart';
import 'cart_screen.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Choose Discount'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: AppConstants.voucherData.length,
              itemBuilder: (_, index) => VoucherItem(
                title: AppConstants.voucherData[index].title,
                expiry: AppConstants.voucherData[index].expiry,
                imageUrl: AppConstants.voucherData[index].image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              child: Text(
                'Choose',
                style: context.textTheme.headlineMedium
                    ?.copyWith(color: AppColors.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
