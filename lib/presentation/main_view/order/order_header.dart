import 'package:flutter/material.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pizza Lover Company Food Order',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          'Order Code: 1223546 | Paid',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 8),
            Expanded(
              child: Text('9 West 46th Street, New York City'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Icon(Icons.calendar_today),
            SizedBox(width: 8),
            Text('14:00 Today, Apr 14'),
          ],
        ),
      ],
    );
  }
}
