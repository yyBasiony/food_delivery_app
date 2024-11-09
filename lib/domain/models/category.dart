import 'restaurant.dart';

class Category {
  final String imagePath;
  final List<Restaurant> restaurants;

  Category({
    required this.imagePath,
    required this.restaurants,
  });
}
