import 'package:flutter/material.dart';
import '../../resources/asset_data.dart';
import 'prodect_screen.dart';

const Map<String, Map<String, dynamic>> categoryData = {
  'Food': {
    'imagePath': AssetData.food,
    'products': {'Burger': 50, 'Pizza': 60, 'Pasta': 45}
  },
  'Drinks': {
    'imagePath': AssetData.coffeeCup,
    'products': {'Water': 10, 'Juice': 15, 'Fresh Juice': 20}
  },
  'Cakes': {
    'imagePath': AssetData.cake,
    'products': {'Cake': 30, 'Fruit Cake': 50, 'Chocolate Cake': 40}
  },
  'Snacks': {
    'imagePath': 'assets/images/snacks.jpeg',
    'products': {'Nuts': 20, 'Chips': 10, 'Cookies': 15}
  },
};

class CategoryScreen extends StatelessWidget {
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryDetails = categoryData[category];

    if (categoryDetails == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Category Not Found')),
        body: const Center(child: Text('No data available for this category.')),
      );
    }

    return ProductScreen(
      category: category,
      imagePath: categoryDetails['imagePath'],
      initialProducts: categoryDetails['products'],
    );
  }
}
