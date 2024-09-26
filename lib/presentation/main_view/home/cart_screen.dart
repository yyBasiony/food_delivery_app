// import 'package:flutter/material.dart';
// import 'package:food_delivery/presentation/resources/assets_data.dart';
// import '../../resources/app_colors.dart';
// import 'discount_screen.dart';
// import 'checkout_screen.dart';

// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   int wingsQuantity = 1;
//   int pizzaQuantity = 2;
//   int saladQuantity = 1;
//   int burgerQuantity = 1;
//   double total = 0.0;
//   double discount = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     _calculateTotal();
//   }

//   void _calculateTotal() {
//     total = (wingsQuantity * 37.99) +
//         (pizzaQuantity * 29.99) +
//         (saladQuantity * 9.99) +
//         (burgerQuantity * 9.99);

//     if (discount > 0) {
//       total = total - (total * discount / 100);
//     }
//   }

//   Widget _buildCartItem(
//       String title, String imagePath, int quantity, double price, int index) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Image.asset(imagePath, width: 50, height: 50),
//           const SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title,
//                   style: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.bold)),
//               Text('Quantity: $quantity'),
//               Text('Price: \$${price.toStringAsFixed(2)}'),
//             ],
//           ),
//           const Spacer(),
//           IconButton(
//             icon: const Icon(Icons.remove),
//             onPressed: () {
//               setState(() {
//                 if (index == 0 && wingsQuantity > 0) {
//                   wingsQuantity--;
//                 } else if (index == 1 && pizzaQuantity > 0) {
//                   pizzaQuantity--;
//                 } else if (index == 2 && saladQuantity > 0) {
//                   saladQuantity--;
//                 } else if (index == 3 && burgerQuantity > 0) {
//                   burgerQuantity--;
//                 }
//                 _calculateTotal();
//               });
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.add),
//             onPressed: () {
//               setState(() {
//                 if (index == 0) {
//                   wingsQuantity++;
//                 } else if (index == 1) {
//                   pizzaQuantity++;
//                 } else if (index == 2) {
//                   saladQuantity++;
//                 } else if (index == 3) {
//                   burgerQuantity++;
//                 }
//                 _calculateTotal();
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//         backgroundColor: AppColors.primaryColor,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 _buildCartItem(
//                   'Fried Spicy Chicken Wings',
//                   AssetData.testImage,
//                   wingsQuantity,
//                   37.99,
//                   0,
//                 ),
//                 _buildCartItem(
//                   'Seafood Pizza',
//                   AssetData.testImage,
//                   pizzaQuantity,
//                   29.99,
//                   1,
//                 ),
//                 _buildCartItem(
//                   'Tuna Salad',
//                   AssetData.testImage,
//                   saladQuantity,
//                   9.99,
//                   2,
//                 ),
//                 _buildCartItem(
//                   'Hamburger',
//                   AssetData.testImage,
//                   burgerQuantity,
//                   9.99,
//                   3,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Text(
//                   'Total: \$${total.toStringAsFixed(2)}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () async {
//                     final selectedDiscount = await Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => DiscountScreen()),
//                     );
//                     if (selectedDiscount != null) {
//                       setState(() {
//                         discount = selectedDiscount;
//                         _calculateTotal();
//                       });
//                     }
//                   },
//                   child: Text('Choose Discount'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primaryColor,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 15),
//                     textStyle: const TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => CheckoutScreen(total: total)),
//                     );
//                   },
//                   child: Text('Checkout'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primaryColor,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 15),
//                     textStyle: const TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
