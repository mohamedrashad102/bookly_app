import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
            'J.K. Rowling',
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          );
  }
}