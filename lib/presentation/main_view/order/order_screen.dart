import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';
import '../../resources/routes.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/scrollable_food_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Order Details',
        actions: [IconButton(icon: const Icon(Icons.qr_code, size: 35), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox.fromSize(
            size: Size.fromHeight(size.height - kToolbarHeight), // TODO: Modify
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOrderHeader(context),
                _buildShipperInfo(context),
                const ScrollableFoodList(),
                _buildOrderSummary(context),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order Again', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, Routes.reviewScreen),
                  child: Text('Review', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrderHeader(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Text('Pizza Lover Company Food Order', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
        Text('Order Code: 1223546', style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey)),
        const Row(children: [Icon(Icons.location_on), Text('9 West 46th Street, New York City')]),
        const Row(children: [Icon(Icons.calendar_today), Text('14:00 Today, Apr 14')]),
      ],
    );
  }

  Widget _buildShipperInfo(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 25, backgroundImage: AssetImage(AssetData.splash)),
        Wrap(
          direction: Axis.vertical,
          children: [
            Text('Hank Harlow', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('Shipper - Delivered', style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey)),
          ],
        ),
        const Spacer(),
        IconButton(icon: const Icon(Icons.call, size: 24), onPressed: () {}),
        IconButton(icon: const Icon(Icons.message, size: 24), onPressed: () {}),
      ],
    );
  }

  Widget _buildOrderSummary(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Price', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('\$40.95', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Cost (3 items)', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('\$0.99', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('\$88.98', style: context.textTheme.bodyMedium?.copyWith(color: AppColors.primaryColor)),
          ],
        ),
      ],
    );
  }
}
