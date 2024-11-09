import 'meal_model.dart';

class Restaurant {
  final String name;
  final String rating;
  final String address;
  final String imageUrl;
  final String openStatus;
  final List<Meal> meals;
  final Map<String, double> location;

  Restaurant({
    required this.name,
    required this.rating,
    required this.address,
    required this.imageUrl,
    required this.openStatus,
    required this.meals,
    required this.location,
  });
}
