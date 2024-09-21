import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../presentation/resources/app_theme.dart';
import '../presentation/resources/routes.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getLightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
