import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../widgets/custom_app_bar.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: Text('Change Password',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenHeight = constraints.maxHeight;
            double screenWidth = constraints.maxWidth;

            return Column(
              children: [
                const Spacer(flex: 1),
                Flexible(
                    flex: 2,
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter Old Password',
                            prefixIcon: Icon(Icons.lock_outline)))),
                const Spacer(flex: 1),
                Flexible(
                    flex: 2,
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter New Password',
                          prefixIcon: Icon(Icons.lock_outline),
                        ))),
                const Spacer(flex: 1),
                Flexible(
                    flex: 2,
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Re-enter New Password',
                            prefixIcon: Icon(Icons.lock_outline)))),
                const Spacer(flex: 1),
                Flexible(
                    flex: 2,
                    child: ElevatedButton(
                        child: Text('Save',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: AppColors.secondary)),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.3,
                        )))),
                const Spacer(flex: 2),
              ],
            );
          },
        ),
      ),
    );
  }
}
