import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import '../widgets/custom_app_bar.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: const Text('My Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Search Address',
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange),
                SizedBox(width: 8),
                Expanded(
                  child: Text('9 West 46th Street, New York City', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(child: SizedBox(height: 300, width: 300, child: Image.asset(AssetData.map))),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Text('start')),
          ],
        ),
      ),
    );
  }
}
