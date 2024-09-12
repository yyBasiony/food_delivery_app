import 'package:flutter/material.dart';

import '../../resources/routes.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        Navigator.pushNamed(context, Routes.homePage);
        break;
      case 1:
        Navigator.pushNamed(
            context, Routes.orderScreen); // Navigate to Order Screen
        break;
      case 2:
        Navigator.pushNamed(
            context, Routes.myListScreen); // Navigate to My List Screen
        break;
      case 3:
        Navigator.pushNamed(
            context, Routes.profileScreen); // Navigate to Profile Screen
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'My List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
    );
  }
}
