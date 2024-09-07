import 'package:flutter/material.dart';

import '../authentication/forgot_password_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/register_screen.dart';
import '../authentication/welcome_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = "/";
  static const String loginScreen = "/loginScreen";
  static const String welcomeScreen = "/welcomeScreen";
  static const String registerScreen = "/registerScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";

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

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
