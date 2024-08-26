import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/onboarding/widget/onboarding_body.dart';
class POnboardingView extends StatelessWidget {
  const POnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBody(),
    );
  }
}
