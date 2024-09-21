import 'package:flutter/material.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/assets_data.dart';
import 'change_password_screen.dart';
import 'detailed_profile_screen.dart';
import 'payment_settings_screen.dart';
import 'voucher_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButtonBack(),
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 50, backgroundImage: AssetImage(AssetData.splash)),
              const SizedBox(height: 8),
              const Text('Jack Sparrow',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Text('0123456789', style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DetailedProfileScreen(),
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
                        builder: (_) => const ChangePasswordScreen()),
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
                        builder: (_) => const PaymentSettingsScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('My Voucher'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const VoucherScreen()),
                  );
                },
              ),
              ListTile(
                  onTap: () {},
                  title: const Text('Notification'),
                  leading: const Icon(Icons.notifications)),
              ListTile(
                  onTap: () {},
                  title: const Text('About Us'),
                  leading: const Icon(Icons.info)),
              ListTile(
                  onTap: () {},
                  title: const Text('Contact Us'),
                  leading: const Icon(Icons.contact_support)),
              const SizedBox(height: 20),
              ElevatedButton(child: const Text('Sing out'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
