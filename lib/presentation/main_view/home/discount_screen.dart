import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../../widgets/custom_app_bar.dart';
import 'checkout_screen.dart';

class DiscountScreen extends StatelessWidget {
  static final List<Map<String, dynamic>> discounts = [
    {"title": "Ceramics workshop Event", "days": "10 days left", "discount": 15.99},
    {"title": "Ceramics workshop Event", "days": "20 days left", "discount": 12.99},
    {"title": "Ceramics workshop Event", "days": "30 days left", "discount": 9.99},
    {"title": "Ceramics workshop Event", "days": "40 days left", "discount": 19.99},
    {"title": "Ceramics workshop Event", "days": "50 days left", "discount": 22.99},
  ];

  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Discount'),
      body: ListView.builder(
        itemCount: discounts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CheckoutScreen(total: discounts[index]['discount']))),
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(radius: 30, backgroundImage: AssetImage(AssetData.cake)),
                  title: Text(discounts[index]['title']!, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
                  subtitle: Row(
                    children: [
                      Text(discounts[index]['days']!),
                      const SizedBox(width: 10),
                      Text("\$${discounts[index]['discount'].toString()}", style: context.textTheme.titleSmall?.copyWith(color: AppColors.grey)),
                    ],
                  ),
                ),
                const Divider(thickness: 1),
              ],
            ),
          );
        },
      ),
    );
  }
}
