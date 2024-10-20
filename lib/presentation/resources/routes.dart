import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../authentication/cubit/cubit_auth.dart';
import '../authentication/forgot_password_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/register_screen.dart';
import '../authentication/welcome_screen.dart';
import '../main_view/home/location_screen.dart';
import '../main_view/main_view.dart';
import '../main_view/order/review_screen.dart';
import '../main_view/profile/screens/address_screen.dart';
import '../main_view/profile/screens/change_password_screen.dart';
import '../main_view/profile/screens/my_profile_screen.dart';
import '../main_view/profile/screens/my_voucher_screen.dart';
import '../main_view/profile/screens/payment_settings_screen.dart';
import '../onboarding/onboarding_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = "/splashScreen";

  // Authentication
  static const String loginScreen = "/loginScreen";
  static const String welcomeScreen = "/welcomeScreen";
  static const String registerScreen = "/registerScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";

  static const String mainView = "/mainView";
  static const String reviewScreen = "/reviewScreen";
  static const String addressScreen = "/addressScreen";
  static const String locationScreen = "/locationScreen";

  // Profile
  static const String myProfileScreen = '/myProfileScreen';
  static const String myVoucherScreen = '/myVoucherScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String paymentSettingsScreen = '/paymentSettingsScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // Authentication
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (_) => AuthCubit(), child: const LoginScreen()));
      case registerScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (_) => AuthCubit(), child: const RegisterScreen()));

      case mainView:
        return MaterialPageRoute(builder: (_) => const MainView());
      case locationScreen:
        return MaterialPageRoute(builder: (_) => const LocationScreen());
      case addressScreen:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case reviewScreen:
        return MaterialPageRoute(builder: (_) => const ReviewScreenOrder());

      // Profile
      case myProfileScreen:
        return MaterialPageRoute(builder: (_) => const MyProfileScreen());
      case myVoucherScreen:
        return MaterialPageRoute(builder: (_) => const MyVoucherScreen());
      case changePasswordScreen:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case paymentSettingsScreen:
        return MaterialPageRoute(builder: (_) => const PaymentSettingsScreen());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
