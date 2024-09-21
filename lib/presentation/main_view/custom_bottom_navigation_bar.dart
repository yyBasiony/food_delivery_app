import 'package:flutter/material.dart';
import '../resources/app_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: List.generate(
        AppConstants.navigationData.length,
        (index) => BottomNavigationBarItem(
          label: AppConstants.navigationData[index].label,
          icon: Icon(
            AppConstants.navigationData[index].icon,
            color: currentIndex == index ? Colors.orange : Colors.grey,
          ),
        ),
      ),
    );
  }
}
