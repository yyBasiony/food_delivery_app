import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_food_menu.dart';
import '../widgets/custom_icon_text.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                      hintText: 'Search', prefixIcon: Icon(Icons.search))),
              const CustomIconAndText(),
              const CustomFoodItems(),
              Text('Food Menu',
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.black)),
              const CustomFoodMenu(),
              Text('Near Me',
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.black)),
              const CustomNearMe(),
              const CustomFoodPromotion(),
            ],
          ),
        ),
      ),
    );
  }
}
