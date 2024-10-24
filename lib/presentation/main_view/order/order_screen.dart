import 'package:flutter/material.dart';
import '../../../domain/models/order_item.dart';
import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';
import '../../resources/asset_data.dart';
import '../../resources/routes.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_order_item.dart';

class OrderScreen extends StatelessWidget {
  final List<OrderItem> orders;

  const OrderScreen({super.key, required this.orders});

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
            size: Size.fromHeight(size.height - kToolbarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOrderHeader(context),
                const SizedBox(height: 6),
                _buildShipperInfo(context),
                Expanded(child: ListView.builder(itemCount: orders.length, itemBuilder: (_, index) => CustomOrderItem(order: orders[index]))),
                _buildOrderSummary(context),
                const SizedBox(height: 6),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order Again', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
                ),
                const SizedBox(height: 12),
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
        const SizedBox(height: 6),
        Text('Order Code: 1223546', style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey)),
        const SizedBox(height: 6),
        const Row(children: [
          Icon(Icons.location_on),
          Text('9 West 46th Street, New York City'),
          SizedBox(height: 6),
        ]),
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
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Cost (3 items)', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
            Text('\$0.99', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
          ],
        ),
        const SizedBox(height: 12),
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
