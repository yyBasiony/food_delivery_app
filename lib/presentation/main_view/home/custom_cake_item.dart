import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import 'prodect_screen.dart';

class CakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProductScreen(
      category: 'Cakes',
      imagePath: AssetData.cake,
      initialProducts: {
        'Cake': 30,
        'Chocolate Cake': 40,
        'Fruit Cake': 50,
      },
    );
  }
}
