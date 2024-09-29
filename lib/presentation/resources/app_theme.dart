import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getLightTheme() {
    return ThemeData(
      // AppBar
      appBarTheme: const AppBarTheme(iconTheme: IconThemeData(size: 20, color: Color(0xff000000))),

      // TextTheme
      textTheme: const TextTheme(
        headlineLarge: Correctly.headlineLarge,
        headlineSmall: Correctly.headlineSmall,
        headlineMedium: Correctly.headlineMedium,
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(48),
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.primaryColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),

      // TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          textStyle: const TextStyle(fontSize: 14),
          foregroundColor: const Color(0xff34495E),
        ),
      ),

      // TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.secondary,
        contentPadding: EdgeInsets.all(15),
        prefixIconColor: Color(0xFFC2C2C2),
        hintStyle: TextStyle(color: Color(0xFFC2C2C2), fontWeight: FontWeight.normal, fontSize: 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide.none),
      ),

      // BottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
