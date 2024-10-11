import 'package:flutter/material.dart';
import '../../resources/app_constants.dart';
import 'prodect_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryDetails = AppConstants.categoryData[category];

    if (categoryDetails == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Category Not Found')),
        body: const Center(child: Text('No data available for this category.')),
      );
    }

    return ProductScreen(
      category: category,
      imagePath: categoryDetails.imagePath,
      initialProducts: categoryDetails.products,
    );
  }
}
