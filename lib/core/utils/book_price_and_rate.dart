import 'package:bookly_app/core/utils/book__rate.dart';
import 'package:bookly_app/core/utils/book_price.dart';
import 'package:flutter/material.dart';

class BookPriceAndRate extends StatelessWidget {
  const BookPriceAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BookPrice(),
        Spacer(),
        BookRate(),
      ],
    );
  }
}