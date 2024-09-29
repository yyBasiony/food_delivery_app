import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 123 987 765', style: Correctly.label1),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('foodorder@gmail.com', style: Correctly.label1),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Custom Address', style: Correctly.label1),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Average Cost: \$10-50', style: Correctly.label1),
          ),
        ],
      ),
    );
  }
}
