import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/app_theme.dart';
import '../presentation/resources/routes.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      initialRoute: Routes.splashScreen,
      theme: AppTheme.getLightTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
    );
  }
}
