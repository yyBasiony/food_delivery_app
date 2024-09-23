import 'package:flutter/material.dart';

import '../authentication/forgot_password_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/register_screen.dart';
import '../authentication/welcome_screen.dart';
import '../main_view/home/location_screen.dart';
import '../main_view/main_view.dart';
import '../main_view/order/review_screen.dart';
import '../main_view/profile/address_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = "/";

  // Authentication
  static const String loginScreen = "/loginScreen";
  static const String welcomeScreen = "/welcomeScreen";
  static const String registerScreen = "/registerScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";

  //
  static const String mainView = "/mainView";
  static const String reviewScreen = "/reviewScreen";
  static const String addressScreen = "/addressScreen";
  static const String locationScreen = "/locationScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case mainView:
        return MaterialPageRoute(builder: (_) => const MainView());
      case locationScreen:
        return MaterialPageRoute(builder: (_) => const LocationScreen());
      case addressScreen:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case reviewScreen:
        return MaterialPageRoute(builder: (_) => const ReviewScreenOrder());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
