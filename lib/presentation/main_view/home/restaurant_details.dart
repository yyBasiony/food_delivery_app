import 'package:flutter/material.dart';

import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../../resources/assets_data.dart';
import 'info_screen.dart';
import 'order_item.dart';
import 'review_item.dart';

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

class _RestaurantDetailsState extends State<RestaurantDetails> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() => {super.initState(), _tabController = TabController(length: 3, vsync: this)};

  @override
  void dispose() => {_tabController.dispose(), super.dispose()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox.fromSize(size: const Size.fromHeight(300), child: Image.asset(widget.imageUrl, fit: BoxFit.cover)),
              const CustomIconButtonBack(),
              Positioned(
                top: 40,
                right: 16,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.white)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: Theme.of(context).textTheme.headlineSmall),
                Text(widget.address),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(widget.rating),
                    const SizedBox(width: 4),
                    Text('(${widget.reviews} reviews)'),
                  ],
                ),
                Text(widget.openStatus, style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
          TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            indicatorColor: Colors.orange,
            tabs: const [Tab(text: 'Order'), Tab(text: 'Information'), Tab(text: 'Reviews')],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: const [
                    OrderItem(price: '15.39', title: 'Hamburger Lover', imageUrl: AssetData.burger),
                    OrderItem(price: '15.39', title: 'Hamburger Lover', imageUrl: AssetData.burger),
                    OrderItem(price: '15.39', title: 'Hamburger Lover', imageUrl: AssetData.burger),
                  ],
                ),
                const RestaurantInfo(),
                ListView(
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
                      review: 'The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service.',
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
