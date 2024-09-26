import 'package:flutter/material.dart';

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
        title: Text("Discount"),
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
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/download (6).jpeg"),
                  ),
                  title: Text(
                    discounts[index]['title']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(discounts[index]['days']!),
                      SizedBox(width: 10),
                      Text("\$${discounts[index]['discount'].toString()}"),
                    ],
                  ),
                ),
                Divider(thickness: 1),
              ],
            ),
          );
        },
      ),
    );
  }
}