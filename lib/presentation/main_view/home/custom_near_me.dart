import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';
import '../../resources/assets_data.dart';
import 'restaurant_details.dart';

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'image': AssetData.burger,
        'name': 'Awesome Fast Restaurant',
        'subtitle': '★ 4.5 • 2 km away',
        'imageUrl': 'assets/images/testimage.png',
        'address': '9 West 46th Street, New York City',
        'rating': '4.5',
        'reviews': '120',
        'openStatus': 'Open Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Pizza Lover Company',
        'subtitle': '★ 4.2 • 3.5 km away',
        'imageUrl': AssetData.burger,
        'address': '123 Main St, New York City',
        'rating': '4.2',
        'reviews': '98',
        'openStatus': 'Closed Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Chicken Fried Restaurant',
        'subtitle': '★ 4.7 • 1.8 km away',
        'imageUrl': AssetData.burger,
        'rating': '4.7',
        'reviews': '220',
        'openStatus': 'Open Now',
        'address': '456 Park Ave, New York City',
      },
    ];

    return Column(
      children: List.generate(3, (index) {
        final restaurant = restaurants[index % restaurants.length];

        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(restaurant['name']!, style: Correctly.label1),
          leading: Image.asset(restaurant['image']!, width: 50, height: 50),
          subtitle: Text(restaurant['subtitle']!, style: Correctly.label11),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantDetails(
                  name: restaurant['name']!,
                  rating: restaurant['rating']!,
                  address: restaurant['address']!,
                  reviews: restaurant['reviews']!,
                  imageUrl: restaurant['imageUrl']!,
                  openStatus: restaurant['openStatus']!,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
