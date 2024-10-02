import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/assets_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_icon_text.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: Text('My Address',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Flexible(
                    flex: 2,
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Search Address',
                          prefixIcon: Icon(Icons.search),
                        ))),
                const Spacer(flex: 1),
                const CustomIconAndText(),
                const Spacer(flex: 2),
                Flexible(
                  flex: 5,
                  child: Center(
                    child: Image.asset(AssetData.map),
                  ),
                ),
                const Spacer(flex: 2),
                Flexible(
                  flex: 2,
                  child: ElevatedButton(
                    child: Text('Save',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.secondary)),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
