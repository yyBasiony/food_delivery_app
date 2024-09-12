import 'package:flutter/material.dart';

import '../../authentication/widget/custom_app_bar.dart';
import '../../authentication/widget/custom_bottom_navigation.dart';
import '../../resources/assets_data.dart';
import 'address_screen.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AssetData.sushi),
              ),
              const SizedBox(height: 8),
              const Text(
                'Jack Sparrow',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                '0123456789',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Name'),
                subtitle: const Text('Jack Sparrow'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Phone Number'),
                subtitle: const Text('+1 968 712 8241'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                subtitle: const Text('jack@foodorder.com'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('My Address'),
                subtitle: const Text('9 West 46th Street, NYC'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddressScreen()),
                  );
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  child: const Text(
                    'save',
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
