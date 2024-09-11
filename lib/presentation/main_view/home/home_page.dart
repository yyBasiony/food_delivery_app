import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_food_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _searchController,
                decoration: const InputDecoration(
                    hintText: 'Search', prefixIcon: Icon(Icons.search)),
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '9 West 46 Th Street, New York City',
                    // style: AppTheme.getLightTheme().textTheme.headline1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const CustomFoodItems(),
          ],
        ),
      ),
    );
  }
}
