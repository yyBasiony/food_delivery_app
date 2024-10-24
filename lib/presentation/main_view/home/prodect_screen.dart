// product_screen.dart
import 'package:flutter/material.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_theme.dart';
import '../../resources/theme/app_theme.dart';
import '../widgets/custom_app_bar.dart';

class ProductScreen extends StatefulWidget {
  final String category;
  final String imagePath;
  final Map<String, double> initialProducts;

  const ProductScreen({super.key, required this.category, required this.imagePath, required this.initialProducts});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late Map<String, int> itemCount;

  @override
  void initState() {
    super.initState();
    itemCount = {};
    for (var item in widget.initialProducts.keys) itemCount[item] = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.category),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: itemCount.keys.map((item) {
          return Card(
            child: ListTile(
              leading: Image.asset(widget.imagePath),
              title: Text(item),
              subtitle: Text('${getPrice(item)} LE', style: AppTextTheme.itemColor.copyWith(color: AppColors.primaryColor)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => setState(() {
                      if (itemCount[item]! > 0) {
                        itemCount[item] = itemCount[item]! - 1;
                      }
                    }),
                  ),
                  Text('${itemCount[item]}', style: context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
                  IconButton(icon: const Icon(Icons.add), onPressed: () => setState(() => itemCount[item] = itemCount[item]! + 1)),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  double getPrice(String item) => widget.initialProducts[item] ?? 0.0;
}
