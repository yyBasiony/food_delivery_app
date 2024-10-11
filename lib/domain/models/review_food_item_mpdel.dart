class ReviewFoodItemModel {
  final String name;
  final String image;
  final double price;
  bool? isLiked;

  ReviewFoodItemModel({
    required this.name,
    required this.image,
    required this.price,
    this.isLiked,
  });
}
