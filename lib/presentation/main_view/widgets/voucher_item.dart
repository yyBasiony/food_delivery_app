import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_colors.dart';
import 'package:food_delivery/presentation/resources/app_text_theme.dart';

class VoucherItem extends StatefulWidget {
  final String title;
  final String expiry;
  final String imageUrl;
  final bool isSelected;
  const VoucherItem({
    super.key,
    required this.title,
    required this.expiry,
    required this.imageUrl,
    this.isSelected = false,
  });
  @override
  _VoucherItemState createState() => _VoucherItemState();
}

class _VoucherItemState extends State<VoucherItem> {
  late bool isSelected;
  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.black),
      ),
      subtitle: Text(widget.expiry,
          style: AppTextTheme.label11.copyWith(color: AppColors.grey)),
      leading: Image.asset(widget.imageUrl, width: 50, height: 50),
      trailing: Icon(
        Icons.check_circle,
        size: 30,
        color: isSelected ? AppColors.primaryColor : AppColors.grey,
      ),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
    );
  }
}
