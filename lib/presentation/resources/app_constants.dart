import 'package:flutter/material.dart';
import '../../domain/models/model_food_item.dart';
import '../../domain/models/onboarding_model.dart';
import '../../domain/models/order_item_model.dart';
import '../../domain/models/resturant_nodel.dart';
import '../../domain/models/review_food_item_mpdel.dart';
import 'asset_data.dart';

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
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
    ),
    OnboardingModel(
      title: 'Certificate Food',
      image: AssetData.onboarding3,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
    ),
    OnboardingModel(
      title: 'Payment Online',
      image: AssetData.onboarding4,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
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

  static const List<({String name, String imageUrl, double price})>
      foodItemsData = [
    (price: 11.99, name: 'Hamburger', imageUrl: AssetData.burger),
    (price: 7.99, name: 'Tuna Salad', imageUrl: AssetData.burger),
    (price: 12.99, name: 'Chicken Fried', imageUrl: AssetData.burger),
    (price: 12.99, name: 'Chicken Fried', imageUrl: AssetData.burger),
  ];

  static final List<FoodItem> foodMenu = [
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
  static const List<({String title, String image, int expiry})> voucherData = [
    (title: '30% for Pizza', image: AssetData.testImage, expiry: 15),
    (title: '50% Hamburger', image: AssetData.testImage, expiry: 20),
    (title: '19% in Pizza Love', image: AssetData.testImage, expiry: 10),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
  ];
  static final List<OrderItemModel> orderItems = [
    OrderItemModel(
      title: 'Hamburger',
      price: 11.99,
      imageUrl: AssetData.burger,
    ),
    OrderItemModel(
      title: 'Tuna Salad',
      price: 7.99,
      imageUrl: AssetData.burger,
    ),
    OrderItemModel(
      title: 'Chicken Fried',
      price: 12.99,
      imageUrl: AssetData.burger,
    ),
  ];
  static List<ReviewFoodItemModel> reviewFoodData = [
    ReviewFoodItemModel(
      name: 'Hamburger Lover',
      image: AssetData.testImage,
      price: 15.50,
      isLiked: null,
    ),
    ReviewFoodItemModel(
      name: 'Fried Spicy Chicken Wings',
      image: AssetData.testImage,
      price: 27.99,
      isLiked: null,
    ),
    ReviewFoodItemModel(
      name: 'Tuna Salad',
      image: AssetData.testImage,
      price: 7.99,
      isLiked: null,
    ),
    ReviewFoodItemModel(
      name: 'Mushroom Pizza',
      image: AssetData.testImage,
      price: 14.99,
      isLiked: null,
    ),
  ];
  static List<RestaurantModel> restaurants = [
    RestaurantModel(
      image: AssetData.burger,
      name: 'Awesome Fruit Restaurant',
      address: '13th Street. 47 W 13th St, NY',
      distance: '3 min • 1.1 km',
      rating: '4.6',
      reviews: '120',
      imageUrl: AssetData.burger,
      openStatus: 'Open Now',
    ),
    RestaurantModel(
      image: AssetData.burger,
      name: 'Pizza Lover Company',
      address: '78th Street. 88 W 21th St, NY',
      distance: '4 min • 1.5 km',
      rating: '4.9',
      reviews: '200',
      imageUrl: AssetData.burger,
      openStatus: 'Open Now',
    ),
    RestaurantModel(
      image: AssetData.burger,
      name: 'Chicken Fried Restaurant',
      address: '132th Street. 41 W 10th St, NY',
      distance: '5 min • 1.7 km',
      rating: '4.9',
      reviews: '250',
      imageUrl: AssetData.burger,
      openStatus: 'Closed',
    ),
  ];
}
