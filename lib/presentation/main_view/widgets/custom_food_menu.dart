import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';
import '../../resources/asset_data.dart';

class CustomFoodMenu extends StatelessWidget {
  static final _foodMenuData = [
    (label: 'Burgers', color: AppColors.greenItem, image: AssetData.burger),
    (label: 'Fruit', color: AppColors.redItem, image: AssetData.fruit),
    (label: 'Pizza', color: AppColors.yellowItem, image: AssetData.pizza),
    (label: 'Sushi', color: AppColors.blueItem, image: AssetData.sushi),
    (label: 'Barbecue', color: AppColors.purpleItem, image: AssetData.barbecue),
    (label: 'Noodle', color: AppColors.lightGreenItem, image: AssetData.noodle),
  ];
  const CustomFoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(250),
      child: GridView.builder(
        itemCount: _foodMenuData.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (_, index) => Container(
          width: 110,
          height: 110,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: _foodMenuData[index].color,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(alignment: AlignmentDirectional.bottomEnd, image: AssetImage(_foodMenuData[index].image)),
          ),
          child: Text(_foodMenuData[index].label, style: context.textTheme.bodySmall),
        ),
      ),
    );
  }
}
