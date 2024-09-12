import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/main_view/home/location_screen.dart';
import '../authentication/forgot_password_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/register_screen.dart';
import '../authentication/welcome_screen.dart';
import '../main_view/home/home_page.dart';
import '../main_view/my_list/my_list_screen.dart';
import '../main_view/order/order_screen.dart';
import '../main_view/profile/profile_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = "/";
  static const String loginScreen = "/loginScreen";
  static const String welcomeScreen = "/welcomeScreen";
  static const String registerScreen = "/registerScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";
  static const String homePage = "/homePage";
  static const String locationScreen = "/locationScreen";
  static const String orderScreen = "/orderScreen"; // Added Order route
  static const String myListScreen = "/myListScreen"; // Added My List route
  static const String profileScreen = "/profileScreen"; // Added Profile route

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case locationScreen:
        return MaterialPageRoute(builder: (_) => const LocationScreen());
      case orderScreen:
        return MaterialPageRoute(
            builder: (_) => const OrderScreen()); // Order Screen
      case myListScreen:
        return MaterialPageRoute(
            builder: (_) => const MyListScreen()); // My List Screen
      case profileScreen:
        return MaterialPageRoute(
            builder: (_) => const ProfileScreen()); // Profile Screen

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
