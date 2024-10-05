import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_theme.dart';
import '../../../resources/asset_data.dart';
import '../../../widgets/custom_app_bar.dart';

class MyProfileScreen extends StatelessWidget {
  static const List<({String title, String data})> _profileData = [
    (title: 'My Name', data: 'Jack Sparrow'),
    (title: 'Phone Number', data: '+1 968 712 8241'),
    (title: 'Email', data: 'jack@foodorder.com'),
    (title: 'My Address', data: '9 West 46th Street, NYC')
  ];
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Profile'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(radius: 50, backgroundImage: AssetImage(AssetData.sushi)),
          Text('Jack Sparrow', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
          const Text('Change Photo', style: TextStyle(color: AppColors.grey)), // TODO: TextButton
          //
          Expanded(
            child: ListView.builder(
              itemCount: _profileData.length,
              itemBuilder: (_, index) => ListTile(
                onTap: () {},
                title: Text(_profileData[index].title, style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
                trailing: Text(_profileData[index].data, style: context.textTheme.headlineSmall?.copyWith(color: AppColors.grey)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32)),
            child: Text('Save', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
          ),
        ],
      ),
    );
  }
}
