import 'package:flutter/material.dart';
import '../../resources/routes.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);

    switch (_selectedIndex) {
      case 0:
        Navigator.pushReplacementNamed(context, Routes.homePage);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, Routes.orderScreen);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, Routes.myListScreen);
        break;
      case 3:
        Navigator.pushReplacementNamed(context, Routes.profileScreen);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.orange : Colors.grey)),
        BottomNavigationBarItem(label: 'Order', icon: Icon(Icons.list_alt, color: _selectedIndex == 1 ? Colors.orange : Colors.grey)),
        BottomNavigationBarItem(label: 'My List', icon: Icon(Icons.bookmark, color: _selectedIndex == 2 ? Colors.orange : Colors.grey)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person, color: _selectedIndex == 3 ? Colors.orange : Colors.grey)),
      ],
    );
  }
}
