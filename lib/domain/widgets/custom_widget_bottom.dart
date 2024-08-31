import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/style.dart';

Widget customButton({
  required String text,
  required Color backgroundColor,
  required Color textColor,
  required Color borderColor,
  required VoidCallback onPressed,
}) {
  return Container(
    width: 280,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(color: borderColor),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyle.textStylecustombottom.copyWith(color: textColor),
      ),
    ),
  );
}
