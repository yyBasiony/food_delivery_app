import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Divider(thickness: 1, color: AppConstants.divider),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text('Or connect with'),
        ),
      ],
    );
  }
}
