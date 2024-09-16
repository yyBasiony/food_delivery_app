import '../../domain/models/onboarding_model.dart';
import 'assets_data.dart';

class AppConstants {
  AppConstants._();

  static const List<OnboardingModel> onboardingData = [
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
}
