import 'package:flutter/material.dart';

import '../../domain/models/category.dart';
import '../../domain/models/food_item.dart';
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

  static final List<FoodItem> foodMenu = [
    FoodItem(
      rating: 4.5,
      price: 11.99,
      name: 'Hamburger',
      reviewsCount: 120,
      distance: '2.5 km',
      deliveryTime: '30-40 min',
      imageUrl: AssetData.burger,
      restaurant: 'Awesome Fruit Restaurant',
    ),
    FoodItem(
      rating: 4.7,
      price: 9.99,
      name: 'Pizza',
      reviewsCount: 200,
      distance: '1.8 km',
      imageUrl: AssetData.pizza,
      deliveryTime: '20-30 min',
      restaurant: 'Pizza Lover Company',
    ),
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
    OrderItem(price: 11.99, title: 'Hamburger', imageUrl: AssetData.burger),
    OrderItem(price: 7.99, title: 'Tuna Salad', imageUrl: AssetData.burger),
    OrderItem(price: 12.99, title: 'Chicken Fried', imageUrl: AssetData.burger),
  ];

  static List<ReviewFoodItem> reviewFoodData = [
    ReviewFoodItem(price: 15.50, name: 'Hamburger Lover', image: AssetData.testImage),
    ReviewFoodItem(price: 27.99, image: AssetData.testImage, name: 'Fried Spicy Chicken Wings'),
    ReviewFoodItem(price: 7.99, name: 'Tuna Salad', image: AssetData.testImage),
    ReviewFoodItem(price: 14.99, name: 'Mushroom Pizza', image: AssetData.testImage),
  ];

  static List<Restaurant> restaurants = [
    Restaurant(
      rating: '4.6',
      reviews: '120',
      openStatus: 'Open Now',
      image: AssetData.burger,
      imageUrl: AssetData.burger,
      distance: '3 min • 1.1 km',
      name: 'Awesome Fruit Restaurant',
      address: '13th Street. 47 W 13th St, NY',
    ),
    Restaurant(
      rating: '4.9',
      reviews: '200',
      openStatus: 'Open Now',
      image: AssetData.burger,
      imageUrl: AssetData.burger,
      distance: '4 min • 1.5 km',
      name: 'Pizza Lover Company',
      address: '78th Street. 88 W 21th St, NY',
    ),
    Restaurant(
      rating: '4.9',
      reviews: '250',
      openStatus: 'Closed',
      image: AssetData.burger,
      distance: '5 min • 1.7 km',
      imageUrl: AssetData.burger,
      name: 'Chicken Fried Restaurant',
      address: '132th Street. 41 W 10th St, NY',
    ),
  ];

  static Map<String, Category> categoryData = {
    'Food': Category(imagePath: AssetData.food, products: {'Burger': 50, 'Pizza': 60, 'Pasta': 45}),
    'Drinks': Category(imagePath: AssetData.coffeeCup, products: {'Water': 10, 'Juice': 15, 'Fresh Juice': 20}),
    'Cakes': Category(imagePath: AssetData.cake, products: {'Cake': 30, 'Fruit Cake': 50, 'Chocolate Cake': 40}),
    'Snacks': Category(imagePath: AssetData.snack, products: {'Nuts': 20, 'Chips': 10, 'Cookies': 15}),
  };
}
