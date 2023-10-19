import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 14,
        ),
        SizedBox(width: 2),
        CustomText(
          '4.8',
          fontSize: 14,
        ),
        SizedBox(width: 5),
        CustomText(
          '(2390)',
          fontSize: 12,
          color: Colors.grey,
        ),
      ],
    );
  }
}
