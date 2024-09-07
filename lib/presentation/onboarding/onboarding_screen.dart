import 'package:flutter/material.dart';

import '../../domain/models/onboarding_model.dart';
import '../resources/app_constants.dart';
import '../resources/assets_data.dart';
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
  void initState() => {pageController = PageController(), super.initState()};

  @override
  void dispose() => {pageController.dispose(), super.dispose()};

  // void navigateToWelcome() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const Welcome()),
  //   );
  // }

  final List<OnboardingModel> onboardList = [
    OnboardingModel(
      title: 'Delicious Food',
      image: AssetData.onboarding1,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    OnboardingModel(
      title: 'Fast Shipping',
      image: AssetData.onboarding2,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
    ),
    OnboardingModel(
      title: 'Certificate Food',
      image: AssetData.onboarding3,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
    ),
    OnboardingModel(
      title: 'Payment Online',
      image: AssetData.onboarding4,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text('Skip'),
                onPressed: () => Navigator.pushReplacementNamed(context, Routes.welcomeScreen),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: onboardList.length,
                onPageChanged: (index) => setState(() => pageIndex = index),
                itemBuilder: (_, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboardList[index].image, width: 190, height: 120),
                      const SizedBox(height: 50),
                      Text(onboardList[index].title),
                      const SizedBox(height: 10),
                      Text(onboardList[index].description, textAlign: TextAlign.center),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardList.length,
                (index) => AnimatedContainer(
                  width: 10,
                  height: 10,
                  duration: AppConstants.navigationDuration,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: pageIndex == index ? AppConstants.active : AppConstants.inactive),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
