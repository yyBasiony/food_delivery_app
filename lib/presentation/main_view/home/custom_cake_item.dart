import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';

import '../../resources/app_colors.dart';
import '../widgets/custom_app_bar.dart';

class CakeScreen extends StatefulWidget {
  @override
  _CakeScreenState createState() => _CakeScreenState();
}

class _CakeScreenState extends State<CakeScreen> {
  Map<String, int> itemCount = {
    'Cake': 1,
    'Chocolate Cake': 0,
    'Fruit Cake': 0,
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
              leading: Image.asset('assets/images/download (6).jpeg'),
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
      case 'Cake':
        return 30;
      case 'Chocolate Cake':
        return 40;
      case 'Fruit Cake':
        return 50;
      default:
        return 0;
    }
  }
}
