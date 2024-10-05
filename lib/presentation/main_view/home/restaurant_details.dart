import 'package:flutter/material.dart';

import '../../resources/app_text_theme.dart';
import '../../resources/app_theme.dart';
import '../../resources/asset_data.dart';

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
              IconButton(tooltip: 'Back', onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios, size: 30)),
              Positioned(
                top: 40,
                right: 16,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.red)),
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
                Text(widget.name, style: context.textTheme.headlineSmall),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          OrderItem(title: 'Hamburger', imageUrl: AssetData.testImage, price: '11.99'),
                          OrderItem(title: 'Tuna Salad', imageUrl: AssetData.testImage, price: '8.99'),
                          OrderItem(title: 'Chicken Fried', imageUrl: AssetData.testImage, price: '12.99'),
                          OrderItem(title: 'Spaghetti', imageUrl: AssetData.testImage, price: '7.99'),
                        ],
                      ),
                    ),
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

class OrderItem extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;

  const OrderItem({super.key, required this.title, required this.price, required this.imageUrl});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int quantity = 0;

  void _increaseQuantity() => setState(() => quantity++);

  void _decreaseQuantity() {
    if (quantity > 0) setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title, style: AppTextTheme.itemColor),
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      subtitle: Text('\$${widget.price}', style: AppTextTheme.itemColor),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (quantity > 0) IconButton(icon: const Icon(Icons.remove_circle_outline), onPressed: _decreaseQuantity),
          Text('$quantity'),
          IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: _increaseQuantity),
        ],
      ),
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(leading: Icon(Icons.phone), title: Text('+1 123 987 765', style: AppTextTheme.itemColor)),
          ListTile(leading: Icon(Icons.email), title: Text('foodorder@gmail.com', style: AppTextTheme.itemColor)),
          ListTile(leading: Icon(Icons.location_on), title: Text('Custom Address', style: AppTextTheme.itemColor)),
          ListTile(leading: Icon(Icons.attach_money), title: Text('Average Cost: \$10-50', style: AppTextTheme.itemColor)),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String name;
  final String image;
  final String review;

  const ReviewItem({super.key, required this.name, required this.image, required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
