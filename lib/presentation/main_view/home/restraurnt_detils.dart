import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text(widget.name),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.imageUrl, fit: BoxFit.cover),
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
                  children: [
                    OrderItem(
                      imageUrl: 'assets/images/burger.png',
                      title: 'Hamburger Lover',
                      price: '15.39',
                      quantity: 1,
                      onAdd: () => print('Added'),
                    ),
                    OrderItem(
                      title: 'Tuna Salad',
                      price: '9.99',
                      imageUrl: 'assets/images/tunasalad.png',
                      quantity: 1,
                      onAdd: () => print('Added'),
                    ),
                    OrderItem(
                      title: 'Mushroom Pizza',
                      price: '13.99',
                      imageUrl: 'assets/images/mushroompizza.png',
                      quantity: 1,
                      onAdd: () => print('Added'),
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
                        image: 'assets/images/avatar1.png'),
                    ReviewItem(
                        name: 'Sarina Kika',
                        review:
                            'The dishes are attractive and very beautiful. Good food, luxurious space and enthusiastic service.',
                        image: 'assets/images/avatar2.png'),
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
