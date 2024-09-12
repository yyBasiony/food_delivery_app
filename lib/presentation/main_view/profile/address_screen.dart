import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_app_bar.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomAppBar(),
        title: Text('My Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search Address',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '9 West 46th Street, New York City',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(
              child: SizedBox(
                  height: 300, width: 300, child: Image.asset(AssetData.map)),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                child: const Text(
                  'start',
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
