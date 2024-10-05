import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_food_menu.dart';
import '../widgets/custom_icon_text.dart';
import 'discount_screen.dart';
import 'restaurant_details.dart';

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
              TextFormField(controller: _searchController, decoration: const InputDecoration(hintText: 'Search', prefixIcon: Icon(Icons.search))),
              const CustomIconAndText(),
              const CustomFoodItems(),
              Text('Food Menu', textAlign: TextAlign.start, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
              const CustomFoodMenu(),
              Text('Near Me', textAlign: TextAlign.start, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
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
              Text('For Breakfast', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
              GestureDetector(onTap: () {}, child: Text('See all', style: context.textTheme.labelSmall?.copyWith(color: AppColors.primaryColor))),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildFoodItem('Hamburger', AssetData.burger),
              _buildFoodItem('Tuna Salad', AssetData.burger),
              _buildFoodItem('Chicken Fried', AssetData.burger),
              _buildFoodItem('Spaghetti', AssetData.burger),
              _buildFoodItem('Lamb Chops', AssetData.burger),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFoodItem(String title, String imagePath) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(imagePath, width: 80, height: 60, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center, style: AppTextTheme.itemName),
        ],
      ),
    );
  }
}

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'image': AssetData.burger,
        'name': 'Awesome Fast Restaurant',
        'subtitle': '★ 4.5 • 2 km away',
        'imageUrl': AssetData.testImage,
        'address': '9 West 46th Street, New York City',
        'rating': '4.5',
        'reviews': '120',
        'openStatus': 'Open Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Pizza Lover Company',
        'subtitle': '★ 4.2 • 3.5 km away',
        'imageUrl': AssetData.burger,
        'address': '123 Main St, New York City',
        'rating': '4.2',
        'reviews': '98',
        'openStatus': 'Closed Now',
      },
      {
        'image': AssetData.burger,
        'name': 'Chicken Fried Restaurant',
        'subtitle': '★ 4.7 • 1.8 km away',
        'imageUrl': AssetData.burger,
        'rating': '4.7',
        'reviews': '220',
        'openStatus': 'Open Now',
        'address': '456 Park Ave, New York City',
      },
    ];

    return Column(
      children: List.generate(3, (index) {
        final restaurant = restaurants[index % restaurants.length];

        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(restaurant['name']!, style: AppTextTheme.itemColor),
          leading: Image.asset(restaurant['image']!, width: 50, height: 50),
          subtitle: Text(restaurant['subtitle']!, style: AppTextTheme.itemColor),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantDetails(
                  name: restaurant['name']!,
                  rating: restaurant['rating']!,
                  address: restaurant['address']!,
                  reviews: restaurant['reviews']!,
                  imageUrl: restaurant['imageUrl']!,
                  openStatus: restaurant['openStatus']!,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
