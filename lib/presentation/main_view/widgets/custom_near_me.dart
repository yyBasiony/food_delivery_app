import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../home/restaurant_details.dart';

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(AppConstants.restaurants.length, (index) {
        final restaurant = AppConstants.restaurants[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(restaurant.image, width: 60, height: 60, fit: BoxFit.cover),
            ),
            title: Text(restaurant.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: Should be dynamic not repeated
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(restaurant.address, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(restaurant.distance, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: AppColors.primaryColor),
                    const SizedBox(width: 4),
                    Text(restaurant.rating, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
                  ],
                ),
              ],
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RestaurantDetails(restaurant: restaurant))),
          ),
        );
      }),
    );
  }
}
