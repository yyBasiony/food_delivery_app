import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
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
  bool _showGridView = false;
  final _searchController = TextEditingController();

  @override
  void dispose() => {_searchController.dispose(), super.dispose()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Focus(
                      onFocusChange: (hasFocus) => setState(() => _showGridView = hasFocus),
                      child: TextFormField(
                        controller: _searchController,
                        decoration: const InputDecoration(hintText: 'Search', prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                  const CustomIconAndText(),
                  const CustomFoodItems(),
                  Text('Food Menu', textAlign: TextAlign.start, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.black)),
                  const CustomFoodMenu(),
                  Text('Near Me', textAlign: TextAlign.start, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.black)),
                  const CustomNearMe(),
                  const CustomFoodPromotion(),
                ],
              ),
            ),
          ),
          if (_showGridView)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(color: Colors.white, padding: const EdgeInsets.symmetric(horizontal: 8), child: const FoodItemsGrid()),
            ),
        ],
      ),
    );
  }
}

class FoodItemsGrid extends StatelessWidget {
  const FoodItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: const [
          // TODO: Should be dynamic not repeated
          FoodItemWidget(title: 'Hamburger', imagePath: AssetData.burger),
          FoodItemWidget(title: 'Tuna Salad', imagePath: AssetData.burger),
          FoodItemWidget(title: 'Chicken Fried', imagePath: AssetData.burger),
          FoodItemWidget(title: 'Spaghetti', imagePath: AssetData.burger),
          FoodItemWidget(title: 'Lamb Chops', imagePath: AssetData.burger),
          FoodItemWidget(title: 'Shrimp Pizza', imagePath: AssetData.burger),
        ],
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
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DiscountScreen())),
          child: Container(
            height: 150,
            decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(AssetData.burger))),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text('Sale Off\n50% For Breakfast',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('For Breakfast', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.black)),
              GestureDetector(
                  onTap: () {}, child: Text('See all', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.primaryColor))),
            ],
          ),
        ),
        const FoodItemsGrid()
      ],
    );
  }
}
