import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static const displayLarge = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  static const displayMedium = TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);
  static const displaySmall = TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold);

  static const headlineLarge = TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static const headlineMedium = TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold);
  static const headlineSmall = TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500);

  static const titleLarge = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
  static const titleMedium = TextStyle(fontSize: 14, color: Color(0xff34495E), fontWeight: FontWeight.w600);
  static const titleSmall = TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500);

  static const labelLarge = TextStyle(fontSize: 14, color: Color(0xff2ECC71), fontWeight: FontWeight.w600);
  static const labelMedium = TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500);
  static const labelSmall = TextStyle(fontSize: 11, color: Color(0xffE74C3C), fontWeight: FontWeight.w500);

  static const bodyLarge = TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal);
  static const bodyMedium = TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal);
  static const bodySmall = TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.normal);

  // TODO: Should be Named AppTextTheme
  static const itemName = TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500);
  static const itemColor = TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w300);
}
