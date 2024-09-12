import 'package:flutter/material.dart';

class VoucherItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String expiry;
  final bool isSelected;

  const VoucherItem({
    required this.imageUrl,
    required this.title,
    required this.expiry,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl, width: 50, height: 50),
      title: Text(title),
      subtitle: Text(expiry),
      trailing:
          isSelected ? Icon(Icons.check_circle, color: Colors.orange) : null,
    );
  }
}
