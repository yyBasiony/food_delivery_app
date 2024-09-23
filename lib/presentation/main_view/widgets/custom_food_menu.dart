import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_colors.dart';
import '../../resources/assets_data.dart';

class CustomFoodMenu extends StatelessWidget {
  const CustomFoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: AppColors.backgroundItem1,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: AssetImage(AssetData.pizza)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Burgers', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: AppColors.backgroundItem2,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AssetData.pizza))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Pizza', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: AppColors.backgroundItem3,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AssetData.pizza))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('bbq', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: AppColors.backgroundItem,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AssetData.fruit))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Fruit', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: AppColors.backgroundItem3,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AssetData.fruit))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Sushi', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: AppColors.backgroundItem1,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AssetData.fruit))),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    'Noodle',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
