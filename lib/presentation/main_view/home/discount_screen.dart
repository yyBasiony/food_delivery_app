import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/app_colors.dart';
import 'checkout_screen.dart';

class DiscountScreen extends StatelessWidget {
  static final List<Map<String, dynamic>> discounts = [
    {
      "title": "Ceramics workshop Event",
      "days": "10 days left",
      "discount": 15.99
    },
    {
      "title": "Ceramics workshop Event",
      "days": "20 days left",
      "discount": 12.99
    },
    {
      "title": "Ceramics workshop Event",
      "days": "30 days left",
      "discount": 9.99
    },
    {
      "title": "Ceramics workshop Event",
      "days": "40 days left",
      "discount": 19.99
    },
    {
      "title": "Ceramics workshop Event",
      "days": "50 days left",
      "discount": 22.99
    },
  ];

  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Discount",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: AppColors.black)),
          leading: const CustomIconButtonBack()),
      body: ListView.builder(
        itemCount: discounts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CheckoutScreen(total: discounts[index]['discount'])));
            },
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                      radius: 30, backgroundImage: AssetImage(AssetData.cake)),
                  title: Text(discounts[index]['title']!,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black)),
                  subtitle: Row(
                    children: [
                      Text(discounts[index]['days']!),
                      const SizedBox(width: 10),
                      Text("\$${discounts[index]['discount'].toString()}",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: AppColors.grey)),
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
