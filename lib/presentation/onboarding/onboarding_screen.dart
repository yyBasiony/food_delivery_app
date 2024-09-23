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
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.pushReplacementNamed(context, Routes.welcomeScreen),
                child: Text('Skip', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: AppConstants.onboardingData.length,
                onPageChanged: (index) => setState(() => pageIndex = index),
                itemBuilder: (_, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppConstants.onboardingData[index].image, width: 190, height: 160),
                      const SizedBox(height: 60),
                      Text(
                        AppConstants.onboardingData[index].title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        textAlign: TextAlign.center,
                        AppConstants.onboardingData[index].description,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () => pageIndex == AppConstants.onboardingData.length - 1
                  ? Navigator.pushReplacementNamed(context, Routes.welcomeScreen)
                  : pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
              child: Container(
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(color: AppColors.secondary, borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Text("Continue", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primaryColor)))),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AppConstants.onboardingData.length,
                (index) => AnimatedContainer(
                  width: 14,
                  height: 14,
                  duration: const Duration(milliseconds: 500),
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
