import 'package:flutter/material.dart';

import '../../../domain/models/restaurant.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_text_theme.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_order_item.dart';

class RestaurantDetails extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantDetails({super.key, required this.restaurant});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() => {_tabController.dispose(), super.dispose()};

  @override
  void initState() => {
        _tabController = TabController(length: 3, vsync: this),
        super.initState()
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        actions: [
          // TODO: Should be dynamic not repeated
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border,
                  color: AppColors.primaryColor)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: AppColors.primaryColor)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, color: AppColors.primaryColor)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
                height: 300,
                width: double.infinity,
                child:
                    Image.asset(widget.restaurant.imageUrl, fit: BoxFit.cover))
          ]),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.restaurant.name,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(widget.restaurant.address,
                    style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star,
                        color: AppColors.primaryColor, size: 16),
                    const SizedBox(width: 4),
                    Text(widget.restaurant.rating),
                    const SizedBox(width: 4),
                    Text('(${widget.restaurant.rating} stars)',
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 8),
                Text(widget.restaurant.openStatus,
                    style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
          TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            indicatorColor: AppColors.primaryColor,
            tabs: const [
              Tab(text: 'Order'),
              Tab(text: 'Information'),
              Tab(text: 'Reviews')
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: AppConstants.orderItems
                      .map((orderItem) => CustomOrderItem(order: orderItem))
                      .toList(),
                ),
                const RestaurantInfo(),
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: AppConstants.reviewFoodData
                      .map((review) => ReviewItem(
                          name: review.name,
                          image: review.image,
                          review: 'Your review here'))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// RestaurantInfo widget
class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('+1 123 987 765', style: AppTextTheme.itemColor)),
            ListTile(
                leading: Icon(Icons.email),
                title:
                    Text('foodorder@gmail.com', style: AppTextTheme.itemColor)),
            ListTile(
                leading: Icon(Icons.location_on),
                title: Text('78th Street, 88 W 21th St, NY',
                    style: AppTextTheme.itemColor)),
            ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Average Cost: \$10-50',
                    style: AppTextTheme.itemColor)),
          ],
        ),
      ),
    );
  }
}

// ReviewItem widget
class ReviewItem extends StatelessWidget {
  final String name;
  final String image;
  final String review;

  const ReviewItem({
    super.key,
    required this.name,
    required this.image,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 25, backgroundImage: AssetImage(image)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextTheme.itemColor),
                const SizedBox(height: 4),
                Text(review, style: AppTextTheme.itemColor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
