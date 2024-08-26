import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/onboarding_model.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> onboardList = [
      OnboardingModel(
        image: 'assets/images/onboarding1.png',
        title: 'Delicious Food',
        description: 'Lorem ipusm dolor sit amet, consectetur adipiscing elit.',
      ),
      OnboardingModel(
        image: 'assets/images/onboarding2.png',
        title: 'Fast Shipping',
        description: 'Lorem ipusm dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
      ),
      OnboardingModel(
        image: 'assets/images/onboarding3.png',
        title: 'Certificate Food',
        description: 'Lorem ipusm dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
      ),
      OnboardingModel(
        image: 'assets/images/onboarding4.png',
        title: 'Payment Online',
        description: 'Lorem ipusm dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffD35400),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (int index) {
                setState(() {
                  pageIndex = index;
                });
              },
              itemCount: onboardList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 190,
                      height: 120,
                      child: Image.asset(onboardList[index].image!),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      onboardList[index].title!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      onboardList[index].description!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(onboardList.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: pageIndex == index ? Colors.white : const Color(0xfff0c3a6),
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}