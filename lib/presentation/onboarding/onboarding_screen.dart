import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_constants.dart';
import '../resources/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;
  late PageController pageController;

  @override
  void dispose() => {pageController.dispose(), super.dispose()};

  @override
  void initState() => {pageController = PageController(), super.initState()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text('Skip', style: Theme.of(context).textTheme.headlineLarge),
                onPressed: () => Navigator.pushReplacementNamed(context, Routes.welcomeScreen),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) => pageIndex = index,
                itemCount: AppConstants.onboardingData.length,
                itemBuilder: (_, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppConstants.onboardingData[index].image, width: 190, height: 120),
                      const SizedBox(height: 50),
                      Text(AppConstants.onboardingData[index].title, style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(height: 10),
                      Text(AppConstants.onboardingData[index].description,
                          style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AppConstants.onboardingData.length,
                (index) => AnimatedContainer(
                  width: 10,
                  height: 10,
                  duration: const Duration(seconds: 1),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: pageIndex == index ? Colors.white : AppColors.inactive),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
