import 'package:flutter/material.dart';

class Correctly {
  Correctly._();

  static const headlineLarge =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static const headlineMedium =
      TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold);
  static const headlineSmall =
      TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500);

  /// TextTheme of App
  static const TextTheme textTheme = TextTheme(
    //
    displayLarge: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),

    titleLarge: TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        fontSize: 14, color: Color(0xff34495E), fontWeight: FontWeight.w600),
    titleSmall: TextStyle(
        fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),

    bodyLarge: TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.normal),

    labelLarge: TextStyle(
        fontSize: 14, color: Color(0xff2ECC71), fontWeight: FontWeight.w600),
    labelMedium: TextStyle(
        fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(
        fontSize: 11, color: Color(0xffE74C3C), fontWeight: FontWeight.w500),
  );

  // TODO: Should be Named Correctly
  static const itemName =
      TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500);
  static const itemColor =
      TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w300);
}

extension BuildContextExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
