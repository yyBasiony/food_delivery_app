import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_bottom_navigation.dart';
import 'change_password_screen.dart';
import 'detailed_profile_screen.dart';
import 'payment_seting_screen.dart';
import 'voucher_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailedProfileScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.payment),
                title: const Text('Payment Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentSettingsScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('My Voucher'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VoucherScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notification'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About Us'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.contact_support),
                title: const Text('Contact Us'),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
