import 'package:flutter/material.dart';

import 'prodect_screen.dart';

class SnackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProductScreen(
      category: 'Snacks',
      imagePath: 'assets/images/snacks.jpeg',
      initialProducts: {
        'Chips': 10,
        'Cookies': 15,
        'Nuts': 20,
      },
    );
  }
}
