import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Color(0xff34495E),
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.grey,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Color(0xff2ECC71),
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.grey,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 11,
      color: Color(0xffE74C3C),
    ),
  );
  static const TextStyle label1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: Colors.black,
  );
  static const TextStyle label11 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8,
    color: Colors.black,
  );
}
