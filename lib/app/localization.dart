import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'constants.dart';

class AppLocalization extends StatelessWidget {
  const AppLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: Constants.translationsPath,
      fallbackLocale: Constants.callbackLocale,
      supportedLocales: Constants.supportedLocales,
      child: const FoodDelivery(),
    );
  }
}
