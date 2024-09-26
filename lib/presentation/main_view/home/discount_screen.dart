import 'package:flutter/material.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import 'checkout_screen.dart';

class DiscountScreen extends StatelessWidget {
  final List<Map<String, dynamic>> discounts = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconButtonBack(),
        title: const Text("Discount"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: discounts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(
                    total: discounts[index]['discount'],
                  ),
                ),
              );
            },
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/download (6).jpeg"),
                  ),
                  title: Text(
                    discounts[index]['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(discounts[index]['days']!),
                      const SizedBox(width: 10),
                      Text("\$${discounts[index]['discount'].toString()}"),
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
