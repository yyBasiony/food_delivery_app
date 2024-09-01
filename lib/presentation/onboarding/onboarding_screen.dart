import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/domain/models/onboarding_model.dart';
import 'package:food_delivery/presentation/authentication/welcome.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
import 'package:food_delivery/presentation/resources/style.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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

  // void navigateToWelcome() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const Welcome()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> onboardList = [
      OnboardingModel(
        image: AssetData.onboarding1,
        title: 'Delicious Food',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      ),
      OnboardingModel(
        image: AssetData.onboarding2,
        title: 'Fast Shipping',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.',
      ),
      OnboardingModel(
        image: AssetData.onboarding3,
        title: 'Certificate Food',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id.',
      ),
      OnboardingModel(
        image: AssetData.onboarding4,
        title: 'Payment Online',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa.',
      ),
    ];

    return Scaffold(
      backgroundColor: AppColor.backgronboarding,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30,right: 12),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Welcome()),
                  );
                },
                child: Text(
                  'Skip',
                  style: AppTextStyle.textStyleskip,
                ),
              ),
            ),
          ),

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
                      child: Image.asset(onboardList[index].image),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      onboardList[index].title,
                      style: AppTextStyle.textStyleTitle,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      onboardList[index].description,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.textStyledescrip,
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
                duration: AppColor.durationnavi,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: pageIndex == index
                      ? AppColor.activeColor
                      : AppColor.inactiveColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
