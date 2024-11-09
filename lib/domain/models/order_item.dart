import 'meal_model.dart';

class OrderItem {
  final int quantity;
  final Meal meal;

  OrderItem({
    required this.quantity,
    required this.meal,
  });
}
