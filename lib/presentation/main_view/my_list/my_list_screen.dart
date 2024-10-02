import 'package:flutter/material.dart';
import '../../authentication/widget/custom_icon_bottom_back.dart';
import '../widgets/custom_food_item.dart';
import 'food_list.dart';
import 'horizontal_food_list.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomIconButtonBack()),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'search..', prefixIcon: Icon(Icons.search)),
                  ),
                ),
                if (constraints.maxWidth > 600)
                  const Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CustomFoodItems(),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: HorizontalFoodList(),
                      )),
                    ],
                  )
                else
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CustomFoodItems(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: HorizontalFoodList(),
                      ),
                    ],
                  ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: FoodList(),
                )),
              ],
            );
          },
        ),
      ),
    );
  }
}
