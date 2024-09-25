import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../widgets/custom_app_bar.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  Map<String, int> itemCount = {
    'Water': 1,
    'Juice': 1,
    'Fresh Juice': 1,
    'Pepsi': 0,
    'Fayrouz': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: itemCount.keys.map((item) {
          return Card(
            child: ListTile(
              leading: Image.asset('assets/images/foood.jpeg'),
              title: Text(item),
              subtitle: Text(
                '${getPrice(item)} LE',
                style: AppTextTheme.label11.copyWith(color: AppColors.grey),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (itemCount[item]! > 0)
                          itemCount[item] = itemCount[item]! - 1;
                      });
                    },
                  ),
                  Text(
                    '${itemCount[item]}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.black),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        itemCount[item] = itemCount[item]! + 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  int getPrice(String item) {
    switch (item) {
      case 'Water':
        return 10;
      case 'Juice':
        return 15;
      case 'Fresh Juice':
        return 20;
      case 'Pepsi':
        return 20;
      case 'Fayrouz':
        return 20;
      default:
        return 0;
    }
  }
}
