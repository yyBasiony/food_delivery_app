import 'package:flutter/material.dart';

import '../resources/app_constants.dart';
import 'home/home_page.dart';
import 'my_list/my_list_screen.dart';
import 'order/order_screen.dart';
import 'profile/profile_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  static int _currentIndex = 0;
  static const navigationData = AppConstants.navigationData;
  static const List<Widget> _pages = [HomePage(), OrderScreen(), MyListScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: List.generate(navigationData.length, (index) => _buildNavigationItem(index)),
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationItem(int index) => BottomNavigationBarItem(
      label: navigationData[index].label, icon: Icon(navigationData[index].icon, color: _currentIndex == index ? Colors.orange : Colors.grey));
}
