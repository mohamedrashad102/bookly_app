import 'package:bookly_app/core/utils/book_price.dart';
import 'package:flutter/material.dart';

import 'book__rate.dart';

class BookPriceAndRate extends StatelessWidget {
  const BookPriceAndRate({
    super.key,
    required this.averageRating,
    required this.ratingsCount,
  });
  final num averageRating;
  final int ratingsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BookPrice(),
        const Spacer(),
        BookRateAndCount(
          averageRating: averageRating,
          ratingsCount: ratingsCount,
        ),
      ],
    );
  }
}
