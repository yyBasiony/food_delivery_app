import 'package:flutter/material.dart';

import '../widgets/custom_food_item.dart';
import '../widgets/custom_food_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();

  @override
  void dispose() => {_searchController.dispose(), super.dispose()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _searchController,
                decoration: const InputDecoration(hintText: 'Search', prefixIcon: Icon(Icons.search)),
              ),
            ),
            const Row(
              children: [
                Icon(Icons.pin_drop, size: 20, color: Colors.black),
                Padding(padding: EdgeInsets.all(10), child: Text('9 West 46 Th Street, New York City')),
                SizedBox(height: 20),
              ],
            ),
            const CustomFoodItems(),
            const SizedBox(height: 20),
            const Text(textAlign: TextAlign.start, 'Food Menu'),
            const CustomFoodMenu(),
            const Text('Near Me'),
          ],
        ),
      ),
    );
  }
}
