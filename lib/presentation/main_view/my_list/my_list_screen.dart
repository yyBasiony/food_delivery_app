import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/scrollable_food_list.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_near_me.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Search', prefixIcon: Icon(Icons.search))),
              ),
              const Column(children: [CustomFoodItems(), ScrollableFoodList()]),
              const CustomNearMe(),
            ],
          ),
        ),
      ),
    );
  }
}
