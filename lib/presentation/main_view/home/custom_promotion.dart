import 'package:flutter/material.dart';

class CustomFoodPromotion extends StatelessWidget {
  const CustomFoodPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/burger.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text(
                'Sale Off\n50% For Breakfast',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'For Breakfast',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildFoodItem('Hamburger', 'assets/images/burger.png'),
              _buildFoodItem('Tuna Salad', 'assets/images/burger.png'),
              _buildFoodItem('Chicken Fried', 'assets/images/burger.png'),
              _buildFoodItem('Spaghetti', 'assets/images/burger.png'),
              _buildFoodItem('Lamb Chops', 'assets/images/burger.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFoodItem(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 80,
              height: 60,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 6,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
