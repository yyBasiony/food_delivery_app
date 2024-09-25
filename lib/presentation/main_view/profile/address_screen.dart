import 'package:flutter/material.dart';
import '../../resources/assets_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_icon_text.dart';

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
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 16),
            const CustomIconAndText(),
            const SizedBox(height: 24),
            Center(
                child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(AssetData.map))),
            const SizedBox(height: 16),
            ElevatedButton(child: const Text('Start'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
