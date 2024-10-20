import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';

class CustomIconAndText extends StatelessWidget {
  const CustomIconAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.pin_drop),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('9 West 46 Th Street, New York City', style: context.textTheme.bodyMedium?.copyWith(color: AppColors.black)),
        ),
      ],
    );
  }
}
