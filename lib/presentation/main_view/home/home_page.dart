import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_food_menu.dart';
import '../widgets/custom_icon_text.dart';
import '../widgets/custom_near_me.dart';
import '../widgets/food_item.dart';
import 'discount_screen.dart';

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
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: AppColors.black)),
              const CustomFoodMenu(),
              Text('Near Me',
                  textAlign: TextAlign.start,
                  style: context.textTheme.headlineMedium
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

class CustomFoodPromotion extends StatelessWidget {
  const CustomFoodPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const DiscountScreen())),
          child: Container(
            height: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AssetData.burger))),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text('Sale Off\n50% For Breakfast',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('For Breakfast',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: AppColors.black)),
              GestureDetector(
                  onTap: () {},
                  child: Text('See all',
                      style: context.textTheme.labelSmall
                          ?.copyWith(color: AppColors.primaryColor))),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            children: const [
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Hamburger',
              ),
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Tuna Salad',
              ),
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Chicken Fried',
              ),
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Spaghetti',
              ),
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Lamb Chops',
              ),
              FoodItemWidget(
                imagePath: AssetData.burger,
                title: 'Shrimp Pizza',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
