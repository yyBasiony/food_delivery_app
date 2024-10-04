import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import 'prodect_screen.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProductScreen(
      category: 'Food',
      imagePath: AssetData.food,
      initialProducts: {
        'Burger': 50,
        'Pizza': 60,
        'Pasta': 45,
      },
    );
  }
}
