import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../../resources/routes.dart';
import '../../widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  // TODO: Change route & Complete the Rest of Screens
  static const List<({IconData icon, String title, String route})> _profileListData = [
    (icon: Icons.person, title: 'My Profile', route: Routes.myProfileScreen),
    (icon: Icons.lock, title: 'Change Password', route: Routes.changePasswordScreen),
    (icon: Icons.payment, title: 'Payment Settings', route: Routes.paymentSettingsScreen),
    (icon: Icons.local_offer, title: 'My Voucher', route: Routes.myVoucherScreen),
    (icon: Icons.notifications, title: 'Notification', route: ""),
    (icon: Icons.info, title: 'About Us', route: ""),
    (icon: Icons.contact_support, title: 'Contact Us', route: ""),
  ];
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(radius: 50, backgroundImage: AssetImage(AssetData.splash)),
          Text('Jack Sparrow', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
          const Text('0123456789', style: TextStyle(color: AppColors.grey)),
          Expanded(
            child: ListView.builder(
              itemCount: _profileListData.length,
              itemBuilder: (_, index) => ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                leading: Icon(_profileListData[index].icon, color: AppColors.grey),
                onTap: () => Navigator.pushNamed(context, _profileListData[index].route),
                title: Text(_profileListData[index].title, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign Out', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
          ),
        ],
      ),
    );
  }
}
