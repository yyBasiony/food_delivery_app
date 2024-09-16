import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';
import '../../resources/routes.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_navigation.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const CustomAppBar(), title: const Text("My Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 50, backgroundImage: AssetImage(AssetData.sushi)),
              const SizedBox(height: 8),
              const Text('Jack Sparrow',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Text('0123456789', style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {},
                title: const Text('My Name'),
                leading: const Icon(Icons.person),
                subtitle: const Text('Jack Sparrow'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.phone),
                title: const Text('Phone Number'),
                subtitle: const Text('+1 968 712 8241'),
              ),
              ListTile(
                onTap: () {},
                title: const Text('Email'),
                leading: const Icon(Icons.email),
                subtitle: const Text('jack@foodorder.com'),
              ),
              ListTile(
                title: const Text('My Address'),
                leading: const Icon(Icons.location_on),
                subtitle: const Text('9 West 46th Street, NYC'),
                onTap: () => Navigator.pushNamed(context, Routes.addressScreen),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'save',
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
