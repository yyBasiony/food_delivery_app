import 'package:flutter/material.dart';

import '../widgets/custom_food_item.dart';
import 'food_list.dart';
import 'horizontal_food_list.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              obscureText: true,
              // controller: ,
              decoration: const InputDecoration(hintText: 'search..', prefixIcon: Icon(Icons.search)),
            ),
            const CustomFoodItems(),
            const HorizontalFoodList(),
            const Expanded(child: FoodList()),
          ],
        ),
      ),
    );
  }
}
