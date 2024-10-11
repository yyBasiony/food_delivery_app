import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/asset_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/order_item.dart';

class RestaurantDetails extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String address;
  final String rating;
  final String reviews;
  final String openStatus;

  const RestaurantDetails({
    super.key,
    required this.name,
    required this.rating,
    required this.address,
    required this.reviews,
    required this.imageUrl,
    required this.openStatus,
  });

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border,
                color: AppColors.primaryColor),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: AppColors.primaryColor),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: AppColors.primaryColor),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.address,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star,
                        color: AppColors.primaryColor, size: 16),
                    const SizedBox(width: 4),
                    Text(widget.rating),
                    const SizedBox(width: 4),
                    Text('(${widget.reviews} reviews)',
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.openStatus,
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: AppColors.primaryColor,
            labelColor: Colors.black,
            tabs: const [
              Tab(text: 'Order'),
              Tab(text: 'Information'),
              Tab(text: 'Reviews'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    OrderItem(
                        title: 'Hamburger Lover',
                        price: 15.50,
                        imageUrl: AssetData.burger),
                    OrderItem(
                        title: 'Fried Spicy Chicken Wings',
                        price: 37.99,
                        imageUrl: AssetData.burger),
                    OrderItem(
                        title: 'Tuna Salad',
                        price: 7.99,
                        imageUrl: AssetData.burger),
                    OrderItem(
                        title: 'Mushroom Pizza',
                        price: 14.99,
                        imageUrl: AssetData.burger),
                  ],
                ),
                const RestaurantInfo(),
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    ReviewItem(
                      name: 'Garrett Bina',
                      image: AssetData.burger,
                      review:
                          'I enjoyed the food of the restaurant. The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service. I will be back in the future.',
                    ),
                    ReviewItem(
                      name: 'Sarina Kika',
                      image: AssetData.burger,
                      review:
                          'The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service.',
                    ),
                  ],
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
              title: Text('+1 123 987 765', style: AppTextTheme.itemColor),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('foodorder@gmail.com', style: AppTextTheme.itemColor),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('78th Street, 88 W 21th St, NY',
                  style: AppTextTheme.itemColor),
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title:
                  Text('Average Cost: \$10-50', style: AppTextTheme.itemColor),
            ),
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
                Text(review, style: AppTextTheme.itemColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
