import 'package:flutter/material.dart';

Widget buildOrderItem(String name, String imagePath, double price) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          name,
        ),
        Text(
          '\$$price',
        ),
      ],
    ),
  );
}
