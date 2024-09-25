import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';
import 'restraurnt_detils.dart';

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'image': 'assets/images/burger.png',
        'name': 'Awesome Fast Restaurant',
        'subtitle': '★ 4.5 • 2 km away',
        'imageUrl': 'assets/images/testimage.png',
        'address': '9 West 46th Street, New York City',
        'rating': '4.5',
        'reviews': '120',
        'openStatus': 'Open Now',
      },
      {
        'image': 'assets/images/burger.png',
        'name': 'Pizza Lover Company',
        'subtitle': '★ 4.2 • 3.5 km away',
        'imageUrl': 'assets/images/burger.png',
        'address': '123 Main St, New York City',
        'rating': '4.2',
        'reviews': '98',
        'openStatus': 'Closed Now',
      },
      {
        'image': 'assets/images/burger.png',
        'name': 'Chicken Fried Restaurant',
        'subtitle': '★ 4.7 • 1.8 km away',
        'imageUrl': 'assets/images/burger.png',
        'address': '456 Park Ave, New York City',
        'rating': '4.7',
        'reviews': '220',
        'openStatus': 'Open Now',
      },
    ];

    return Column(
      children: List.generate(8, (index) {
        final restaurant = restaurants[index % restaurants.length];
        return ListTile(
          leading: Image.asset(restaurant['image']!, width: 50, height: 50),
          title: Text(
            restaurant['name']!,
            style: AppTextTheme.label1,
          ),
          subtitle: Text(
            restaurant['subtitle']!,
            style: AppTextTheme.label11,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantDetails(
                  imageUrl: restaurant['imageUrl']!,
                  name: restaurant['name']!,
                  address: restaurant['address']!,
                  rating: restaurant['rating']!,
                  reviews: restaurant['reviews']!,
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
