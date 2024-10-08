import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/asset_data.dart';
import '../home/restaurant_details.dart';

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurants = [
      {
        'image': AssetData.burger,
        'name': 'Awesome Fruit Restaurant',
        'address': '13th Street. 47 W 13th St, NY',
        'distance': '3 min • 1.1 km',
        'rating': '4.6',
        'reviews': '120',
        'imageUrl': AssetData.burger,
        'openStatus': 'Open Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Pizza Lover Company',
        'address': '78th Street. 88 W 21th St, NY',
        'distance': '4 min • 1.5 km',
        'rating': '4.9',
        'reviews': '200',
        'imageUrl': AssetData.burger,
        'openStatus': 'Open Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Chicken Fried Restaurant',
        'address': '132th Street. 41 W 10th St, NY',
        'distance': '5 min • 1.7 km',
        'rating': '4.9',
        'reviews': '250',
        'imageUrl': AssetData.burger,
        'openStatus': 'Closed',
      },
    ];

    return Column(
      children: List.generate(restaurants.length, (index) {
        final restaurant = restaurants[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                restaurant['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              restaurant['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      restaurant['address'],
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      restaurant['distance'],
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star,
                        size: 16, color: AppColors.primaryColor),
                    const SizedBox(width: 4),
                    Text(
                      restaurant['rating'],
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RestaurantDetails(
                    name: restaurant['name'] ?? 'Unknown Restaurant',
                    rating: restaurant['rating'] ?? 'N/A',
                    address: restaurant['address'] ?? 'No address available',
                    reviews: restaurant['reviews'] ?? '0',
                    imageUrl: restaurant['imageUrl'] ?? AssetData.burger,
                    openStatus: restaurant['openStatus'] ?? 'Status Unknown',
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
