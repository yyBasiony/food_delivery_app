import 'package:flutter/material.dart';

import '../../domain/models/model_food_item.dart';
import '../../domain/models/onboarding_model.dart';
import 'assets_data.dart';

class AppConstants {
  AppConstants._();

  static const List<OnboardingModel> onboardingData = [
    OnboardingModel(
      title: 'Delicious Food',
      image: AssetData.onboarding1,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    OnboardingModel(
      title: 'Fast Shipping',
      image: AssetData.onboarding2,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
    ),
    OnboardingModel(
      title: 'Certificate Food',
      image: AssetData.onboarding3,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
    ),
    OnboardingModel(
      title: 'Payment Online',
      image: AssetData.onboarding4,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
    ),
  ];

  static const List<({String label, IconData icon})> navigationData = [
    (label: 'Home', icon: Icons.home),
    (label: 'Order', icon: Icons.list_alt),
    (label: 'My List', icon: Icons.bookmark),
    (label: 'Profile', icon: Icons.person)
  ];

  static final List<FoodItem> foodItems = [
    FoodItem(
      imageUrl: AssetData.burger,
      name: 'Hamburger',
      restaurant: 'Awesome Fruit Restaurant',
      rating: 4.5,
      reviewsCount: 120,
      deliveryTime: '30-40 min',
      distance: '2.5 km',
      price: 11.99,
    ),
    FoodItem(
      imageUrl: AssetData.pizza,
      name: 'Pizza',
      restaurant: 'Pizza Lover Company',
      rating: 4.7,
      reviewsCount: 200,
      deliveryTime: '20-30 min',
      distance: '1.8 km',
      price: 9.99,
    ),
  ];
}
