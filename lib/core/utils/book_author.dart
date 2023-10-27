import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({super.key, required this.bookAuthor});
  final String bookAuthor;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      bookAuthor,
      color: Colors.grey,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }
}
