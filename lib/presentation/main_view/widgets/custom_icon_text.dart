import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';

class CustomIconAndText extends StatelessWidget {
  const CustomIconAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.pin_drop, size: 30, color: AppColors.primaryColor),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('9 West 46 Th Street,\n New York City',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.black)),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
