import 'package:flutter/material.dart';
import 'custom_bottom_navigation_bar.dart';
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
  int _currentIndex = 0;
  static const List<Widget> _pages = [
    HomePage(),
    OrderScreen(),
    MyListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
