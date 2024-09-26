import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';

class VoucherItem extends StatefulWidget {
  final String title;
  final String expiry;
  final String imageUrl;
  final bool isSelected;
  const VoucherItem({super.key, required this.title, required this.expiry, required this.imageUrl, this.isSelected = false});

  @override
  State<VoucherItem> createState() => _VoucherItemState();
}

class _VoucherItemState extends State<VoucherItem> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => setState(() => isSelected = !isSelected),
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      subtitle: Text(widget.expiry, style: AppTextTheme.label11.copyWith(color: AppColors.grey)),
      title: Text(widget.title, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.black)),
      trailing: Icon(Icons.check_circle, size: 30, color: isSelected ? AppColors.primaryColor : AppColors.grey),
    );
  }
}
