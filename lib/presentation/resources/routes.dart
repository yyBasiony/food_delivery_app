import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/authentication/forget_password.dart';
import 'package:food_delivery/presentation/authentication/login.dart';
import 'package:food_delivery/presentation/authentication/register.dart';
import 'package:food_delivery/presentation/authentication/welcome.dart';
import 'package:food_delivery/presentation/onboarding/onboarding_screen.dart';
import 'package:food_delivery/presentation/splash/splash_screen.dart';
class Routes {
  static const String splashRoute = "/";
  static const String onboardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetpassword";
  static const String welcome = "/welcome";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const Login());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => const Register());
      case forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case welcome:
        return MaterialPageRoute(builder: (_) => const Welcome());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}
