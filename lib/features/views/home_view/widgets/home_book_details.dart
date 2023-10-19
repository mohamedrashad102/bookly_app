import 'package:flutter/material.dart';

import '../../../../core/utils/book_author.dart';
import '../../../../core/utils/book_price_and_rate.dart';
import '../../../../core/utils/book_title.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookTitle(),
          SizedBox(height: 2),
          BookAuthor(),
          BookPriceAndRate(),
        ],
      ),
    );
  }
}
