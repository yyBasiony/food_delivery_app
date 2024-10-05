import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_theme.dart';
import '../../../resources/asset_data.dart';
import '../../../widgets/custom_app_bar.dart';

class MyVoucherScreen extends StatelessWidget {
  static const List<({String title, String image, int expiry})> _voucherData = [
    (title: '30% for Pizza', image: AssetData.testImage, expiry: 15),
    (title: '50% Hamburger', image: AssetData.testImage, expiry: 20),
    (title: '19% in Pizza Love', image: AssetData.testImage, expiry: 10),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
    (title: '70% Fast Food', image: AssetData.testImage, expiry: 5),
  ];
  const MyVoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Voucher'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _voucherData.length,
              itemBuilder: (_, index) =>
                  VoucherItem(title: _voucherData[index].title, expiry: _voucherData[index].expiry, imageUrl: _voucherData[index].image),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Use Now', style: context.textTheme.headlineMedium?.copyWith(color: AppColors.secondary)),
          ),
        ],
      ),
    );
  }
}

class VoucherItem extends StatefulWidget {
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
