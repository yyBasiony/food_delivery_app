import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';

class DividerWithImage extends StatelessWidget {
  const DividerWithImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Expanded(child: Divider(color: AppColors.divider)),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8),
                  child: Text('Or connect with',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.divider)),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Image.asset(AssetData.pngItem,
                  height: 75, width: 130, fit: BoxFit.cover),
              const Spacer(flex: 3),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                style: const ButtonStyle(
                  iconSize: WidgetStatePropertyAll(55),
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  iconColor: WidgetStatePropertyAll(Color(0xFF0D47A1)),
                ),
              ),
              const Spacer(),
              Image.asset(AssetData.google,
                  fit: BoxFit.cover, width: 50, height: 50),
              const Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
