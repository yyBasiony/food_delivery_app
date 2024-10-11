class OrderItemModel {
  final String title;
  final double price;
  final String imageUrl;
  int quantity;

  OrderItemModel({
    required this.title,
    required this.price,
    required this.imageUrl,
    this.quantity = 0,
  });
}
