import 'package:flutter/material.dart';

import '../../resources/assets_data.dart';

class CustomFoodMenu extends StatelessWidget {
  const CustomFoodMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 127,
                width: 90,
                decoration: BoxDecoration(
                  color:const Color(0xff3498DB),
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
                    color:const Color(0xff9B59B6),
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
                    color: const Color(0xff3498DB),
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
                    color:const Color(0xff9B59B6),
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
                    color:const Color(0xff3498DB),
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
                    color:const Color(0xff9B59B6),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(AssetData.noodle))),
                child: const Text('Noodle'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
