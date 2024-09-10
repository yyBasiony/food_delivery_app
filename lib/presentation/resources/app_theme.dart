import 'package:flutter/material.dart';

import 'app_constants.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      // TextTheme
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        headlineSmall: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(48),
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppConstants.primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),

      // TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFFF6F4F4),
        prefixIconColor: Color(0xFFC2C2C2),
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        hintStyle:
            TextStyle(color: Color(0xFFC2C2C2), fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none),
      ),
    );
  }
}
