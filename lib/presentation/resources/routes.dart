import 'package:flutter/material.dart';

import '../authentication/forgot_password_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/register_screen.dart';
import '../authentication/welcome_screen.dart';
import '../main_view/home/home_page.dart';
import '../main_view/home/location_screen.dart';
import '../main_view/my_list/my_list_screen.dart';
import '../main_view/order/order_screen.dart';
import '../main_view/profile/address_screen.dart';
import '../main_view/profile/profile_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = "/";
  static const String homePage = "/homePage";
  static const String orderScreen = "/orderScreen";
  static const String loginScreen = "/loginScreen";
  static const String myListScreen = "/myListScreen";
  static const String profileScreen = "/profileScreen";
  static const String addressScreen = "/addressScreen";
  static const String welcomeScreen = "/welcomeScreen";
  static const String registerScreen = "/registerScreen";
  static const String locationScreen = "/locationScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";

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
      case locationScreen:
        return MaterialPageRoute(builder: (_) => const LocationScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case orderScreen:
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      case myListScreen:
        return MaterialPageRoute(builder: (_) => const MyListScreen());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case addressScreen:
        return MaterialPageRoute(builder: (_) => const AddressScreen());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
