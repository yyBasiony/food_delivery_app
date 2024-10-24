import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/theme/app_theme.dart';

class VoucherItem extends StatefulWidget {
  // TODO: Should be edited

  final int expiry;
  final String title;
  final String imageUrl;
  final bool isSelected;
  const VoucherItem({super.key, required this.title, required this.expiry, required this.imageUrl, this.isSelected = false});

  @override
  State<VoucherItem> createState() => _VoucherItemState();
}

class _VoucherItemState extends State<VoucherItem> {
  late bool isSelected;

  @override
  void initState() => {isSelected = widget.isSelected, super.initState()};

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => setState(() => isSelected = !isSelected),
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      trailing: Icon(Icons.check_circle, size: 30, color: isSelected ? AppColors.primaryColor : AppColors.grey),
      title: Text('Sale off ${widget.title}', style: context.textTheme.headlineSmall?.copyWith(color: AppColors.black)),
      subtitle: Text('${widget.expiry} days left', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.black)),
    );
  }
}
