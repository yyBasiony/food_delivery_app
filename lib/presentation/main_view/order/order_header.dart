import 'package:flutter/material.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('Pizza Lover Company Food Order',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('Order Code: 1223546 | Paid',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey)),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.location_on),
            ),
            Expanded(child: Text('9 West 46th Street, New York City'))
          ],
        ),
        const Row(children: [
          Icon(Icons.calendar_today),
          SizedBox(width: 8),
          Text('14:00 Today, Apr 14')
        ]),
      ],
    );
  }
}
