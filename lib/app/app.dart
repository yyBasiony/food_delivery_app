import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/resources/theme/app_theme.dart';
import '../presentation/resources/routes.dart';
import '../presentation/resources/theme/theme_cubit.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (_, themeMode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          //
          themeMode: themeMode,
          theme: AppTheme.getLightTheme(),

          initialRoute: Routes.mainView,
          onGenerateRoute: Routes.generateRoute,

          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
        ),
      ),
    );
  }
}
