import 'package:flutter/material.dart';

class CustomIconButtonBack extends StatelessWidget {
  const CustomIconButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 30,
        ));
  }
}
