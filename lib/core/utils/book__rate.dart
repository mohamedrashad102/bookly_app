import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookRateAndCount extends StatelessWidget {
  const BookRateAndCount({
    super.key,
    required this.averageRating,
    required this.ratingsCount,
  });
  final num averageRating;
  final int ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(width: 2),
        CustomText(
          averageRating.toString(),
          fontSize: 14,
        ),
        const SizedBox(width: 5),
        CustomText(
          ratingsCount.toString(),
          fontSize: 12,
          color: Colors.grey,
        ),
      ],
    );
  }
}
