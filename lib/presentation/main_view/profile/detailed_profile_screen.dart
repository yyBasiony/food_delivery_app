import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';
import '../../resources/routes.dart';
import '../widgets/custom_app_bar.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: Text(
          "My Profile",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AssetData.sushi),
              ),
              Text('Jack Sparrow',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.black)),
              const Text(
                '0123456789',
                style: TextStyle(color: AppColors.grey),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'My Name',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black),
                    ),
                    leading: const Icon(
                      Icons.person,
                      color: AppColors.grey,
                    ),
                    subtitle: Text(
                      'Jack Sparrow',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.grey),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.phone,
                      color: AppColors.grey,
                    ),
                    title: Text(
                      'Phone Number',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black),
                    ),
                    subtitle: Text(
                      '+1 968 712 8241',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.grey),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Email',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black),
                    ),
                    leading: const Icon(
                      Icons.email,
                      color: AppColors.grey,
                    ),
                    subtitle: Text(
                      'jack@foodorder.com',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'My Address',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black),
                    ),
                    leading: const Icon(
                      Icons.location_on,
                      color: AppColors.grey,
                    ),
                    subtitle: Text(
                      '9 West 46th Street, NYC',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.grey),
                    ),
                    onTap: () =>
                        Navigator.pushNamed(context, Routes.addressScreen),
                  ),
                ],
              ),
              // Spacer(
              //   flex: 1,
              // ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text('Save',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.secondary)),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
