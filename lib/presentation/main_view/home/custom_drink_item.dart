import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import 'prodect_screen.dart';

class DrinkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProductScreen(
      category: 'Drinks',
      imagePath: AssetData.coffeeCup,
      initialProducts: {
        'Water': 10,
        'Juice': 15,
        'Fresh Juice': 20,
      },
    );
  }
}
