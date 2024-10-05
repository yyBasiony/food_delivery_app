import 'package:flutter/material.dart';

/// Always has Leading
/// 
/// Close Leading in Home: Custom Food, Card. and in Order: Chat 
class CustomAppBar extends StatelessWidget implements PreferredSize {
  final bool isClose;
  final String? title;
  final List<Widget>? actions;
  const CustomAppBar({super.key, this.title, this.actions, this.isClose = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      title: title != null ? Text(title!) : null,
      leading: IconButton(
          tooltip: 'Back', onPressed: () => Navigator.pop(context), icon: Icon(isClose ? Icons.close_rounded : Icons.arrow_back_ios, size: 30)),
    );
  }

  @override
  Widget get child => const SizedBox.shrink();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
