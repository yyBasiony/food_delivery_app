class FoodItem {
  final String name;
  final double price;
  final double rating;
  final String distance;
  final String imageUrl;
  final int reviewsCount;
  final String restaurant;
  final String deliveryTime;

  FoodItem({
    required this.name,
    required this.price,
    required this.rating,
    required this.distance,
    required this.imageUrl,
    required this.restaurant,
    required this.reviewsCount,
    required this.deliveryTime,
  });
}
