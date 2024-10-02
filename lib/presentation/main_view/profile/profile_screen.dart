import 'package:flutter/material.dart';
import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/app_colors.dart';
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
        leading: const CustomIconButtonBack(),
        title: Text(" Profile",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.black)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AssetData.splash),
              ),
              Text('Jack Sparrow',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.black)),
              const Text('0123456789', style: TextStyle(color: AppColors.grey)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: AppColors.grey,
                    ),
                    title: Text('My Profile',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
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
                    leading: const Icon(
                      Icons.lock,
                      color: AppColors.grey,
                    ),
                    title: Text('Change Password',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ChangePasswordScreen()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.payment,
                      color: AppColors.grey,
                    ),
                    title: Text('Payment Settings',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PaymentSettingsScreen()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.local_offer,
                      color: AppColors.grey,
                    ),
                    title: Text('My Voucher',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const VoucherScreen()),
                      );
                    },
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Notification',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    leading: const Icon(
                      Icons.notifications,
                      color: AppColors.grey,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('About Us',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    leading: const Icon(
                      Icons.info,
                      color: AppColors.grey,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Contact Us',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.black)),
                    leading: const Icon(
                      Icons.contact_support,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Sign out',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: AppColors.secondary)),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
