import 'package:flutter/material.dart';

class VoucherItem extends StatelessWidget {
  final String title;
  final String expiry;
  final String imageUrl;
  final bool isSelected;

  const VoucherItem({super.key, required this.title, required this.expiry, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(expiry),
      leading: Image.asset(imageUrl, width: 50, height: 50),
      trailing: isSelected ? const Icon(Icons.check_circle, color: Colors.orange) : null,
    );
  }
}
