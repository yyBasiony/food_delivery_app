import 'package:flutter/material.dart';
import '../../authentication/widget/custom_icon_bottom_back.dart';
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
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.rating,
    required this.reviews,
    required this.openStatus,
    Key? key,
  }) : super(key: key);

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset(widget.imageUrl, fit: BoxFit.cover),
              ),
              const CustomIconButtonBack(),
              Positioned(
                top: 40,
                right: 16,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,
                    style: Theme.of(context).textTheme.headlineSmall),
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
                Text(widget.openStatus,
                    style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Order'),
              Tab(text: 'Information'),
              Tab(text: 'Reviews'),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.orange,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: const [
                    OrderItem(
                      imageUrl: 'assets/images/burger.png',
                      title: 'Hamburger Lover',
                      price: '15.39',
                    ),
                    OrderItem(
                      imageUrl: 'assets/images/burger.png',
                      title: 'Hamburger Lover',
                      price: '15.39',
                    ),
                    OrderItem(
                      imageUrl: 'assets/images/burger.png',
                      title: 'Hamburger Lover',
                      price: '15.39',
                    ),
                  ],
                ),
                const RestaurantInfo(),
                ListView(
                  children: const [
                    ReviewItem(
                        name: 'Garrett Bina',
                        review:
                            'I enjoyed the food of the restaurant. The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service. I will be back in the future.',
                        image: 'assets/images/burger.png'),
                    ReviewItem(
                        name: 'Sarina Kika',
                        review:
                            'The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service.',
                        image: 'assets/images/burger.png'),
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
