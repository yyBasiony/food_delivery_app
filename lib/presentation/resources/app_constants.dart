import 'package:flutter/material.dart';

import '../../domain/models/category.dart';
import '../../domain/models/meal_model.dart';
import '../../domain/models/order_item.dart';
import '../../domain/models/restaurant.dart';
import '../../domain/models/review_food_item.dart';
import 'asset_data.dart';

class AppConstants {
  AppConstants._();

  static const List<({String title, String image, String description})> onboardingData = [
    (
      title: 'Delicious Food',
      image: AssetData.onboarding1,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    (
      title: 'Fast Shipping',
      image: AssetData.onboarding2,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
    ),
    (
      title: 'Certificate Food',
      image: AssetData.onboarding3,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
    ),
    (
      title: 'Payment Online',
      image: AssetData.onboarding4,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
    ),
  ];

  static const List<({String label, IconData icon})> navigationData = [
    (label: 'Home', icon: Icons.home),
    (label: 'Order', icon: Icons.list_alt),
    (label: 'My List', icon: Icons.bookmark_border_outlined),
    (label: 'Profile', icon: Icons.person_outline)
  ];

  static const List<({String image, String label})> foodItems = [
    (image: AssetData.coffeeCup, label: "Drink"),
    (image: AssetData.food, label: "Food"),
    (image: AssetData.cake, label: "Cake"),
    (image: AssetData.snack, label: "Snack")
  ];

  static const List<({String name, String imageUrl, double price})> foodItemsData = [
    (price: 11.99, name: 'Hamburger', imageUrl: AssetData.burger),
    (price: 7.99, name: 'Tuna Salad', imageUrl: AssetData.burger),
    (price: 12.99, name: 'Chicken Fried', imageUrl: AssetData.burger),
    (price: 12.99, name: 'Chicken Fried', imageUrl: AssetData.burger),
  ];


  static const List<({String title, String image, int expiry})> voucherData = [
    (title: '30% for Pizza', image: AssetData.testImage, expiry: 15),
    (title: '50% Hamburger', image: AssetData.testImage, expiry: 20),
    (title: '19% in Pizza Love', image: AssetData.testImage, expiry: 10),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
  ];

static final List<OrderItem> orderItems = [
  OrderItem(quantity: 1, meal: Meal(name: 'Hamburger', price: 11.99, rating: 4.5, imageUrl: AssetData.burger)),
  OrderItem(quantity: 1, meal: Meal(name: 'Tuna Salad', price: 7.99, rating: 4.2, imageUrl: AssetData.burger)),
  OrderItem(quantity: 1, meal: Meal(name: 'Chicken Fried', price: 12.99, rating: 4.7, imageUrl: AssetData.burger)),
];

static List<ReviewFoodItem> reviewFoodData = [
  ReviewFoodItem(price: 15.50, name: 'Hamburger Lover', image: AssetData.testImage, isLiked: false),
  ReviewFoodItem(price: 27.99, image: AssetData.testImage, name: 'Fried Spicy Chicken Wings', isLiked: true),
  ReviewFoodItem(price: 7.99, name: 'Tuna Salad', image: AssetData.testImage, isLiked: false),
  ReviewFoodItem(price: 14.99, name: 'Mushroom Pizza', image: AssetData.testImage, isLiked: true),
];
static List<Restaurant> restaurants = [
  Restaurant(
    rating: '4.6',
    name: 'Awesome Fruit Restaurant',
    address: '13th Street. 47 W 13th St, NY',
    imageUrl: AssetData.burger,
    openStatus: 'Open Now',
    meals: [], 
    location: {'lat': 40.741895, 'lng': -73.989308}, 
  ),
  Restaurant(
    rating: '4.9',
    name: 'Pizza Lover Company',
    address: '78th Street. 88 W 21th St, NY',
    imageUrl: AssetData.burger,
    openStatus: 'Open Now',
    meals: [],
    location: {'lat': 40.742899, 'lng': -73.987324},
  ),
  Restaurant(
    rating: '4.9',
    name: 'Chicken Fried Restaurant',
    address: '132th Street. 41 W 10th St, NY',
    imageUrl: AssetData.burger,
    openStatus: 'Closed',
    meals: [],
    location: {'lat': 40.743799, 'lng': -73.982145},
  ),
];

static Map<String, Category> categoryData = {
  'Food': Category(imagePath: AssetData.food, restaurants: restaurants),
  'Drinks': Category(imagePath: AssetData.coffeeCup, restaurants: restaurants),
  'Cakes': Category(imagePath: AssetData.cake, restaurants: restaurants),
  'Snacks': Category(imagePath: AssetData.snack, restaurants: restaurants),
};
}
