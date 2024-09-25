import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 123 987 765'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('foodorder@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Custom Address'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Average Cost: \$10-50'),
          ),
        ],
      ),
    );
  }
}
