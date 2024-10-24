class OrderItem {
  int quantity;
  final String title;
  final double price;
  final String imageUrl;

  OrderItem({this.quantity = 0, required this.title, required this.price, required this.imageUrl});
}
