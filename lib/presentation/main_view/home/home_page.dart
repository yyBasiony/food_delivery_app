import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_food_menu.dart';
import 'custom_near_me.dart';
import 'custom_promotion.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                      hintText: 'Search', prefixIcon: Icon(Icons.search)),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.pin_drop, size: 30, color: AppColors.black),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('9 West 46 Th Street,\n New York City',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.black)),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const CustomFoodItems(),
              const SizedBox(height: 6),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Food Menu',
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const CustomFoodMenu(),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Near Me',
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const CustomNearMe(),
              const CustomFoodPromotion(),
            ],
          ),
        ),
      ),
    );
  }
}
