import 'package:flutter/material.dart';

import '../../resources/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _searchController,
              decoration: const InputDecoration(
                  hintText: 'Search', prefixIcon: Icon(Icons.search)),
            ),
            Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 20,
                  color: Colors.black,
                ),
                Text(
                  '9 West 46 Th Street, New York City',
                  style: AppTheme.getLightTheme().textTheme.headline1,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
