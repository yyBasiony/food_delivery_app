import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/assets_data.dart';

import '../../authentication/widget/custom_food_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _searchController,
                decoration: const InputDecoration(
                    hintText: 'Search', prefixIcon: Icon(Icons.search)),
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '9 West 46 Th Street, New York City',
                    // style: AppTheme.getLightTheme().textTheme.headline1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const CustomFoodItems(),
            const SizedBox(
              height: 20,
            ),
            const Text(textAlign: TextAlign.start, 'Food Menu'),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color(0xff3498DB),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                            AssetData.burgers,
                          )),
                        ),
                        child: const Text('Burgers'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff9B59B6),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AssetData.pizza))),
                        child: const Text('Pizza'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff3498DB),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AssetData.BBQ))),
                        child: const Text('BBQ'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff9B59B6),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AssetData.fruit))),
                        child: const Text('Fruit'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff3498DB),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AssetData.sushi))),
                        child: const Text('Sushi'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 127,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff9B59B6),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AssetData.noodle))),
                        child: const Text('Noodle'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
