import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/book_author.dart';
import '../../../../core/utils/book_price_and_rate.dart';
import '../../../../core/utils/book_title.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.currentBook,
  });
  final BookModel currentBook;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookTitle(
            bookTitle: currentBook.volumeInfo.title!,
          ),
          const SizedBox(
            height: 2,
          ),
          BookAuthor(
            bookAuthor: currentBook.volumeInfo.authors!.first!,
          ),
          BookPriceAndRate(
            averageRating: currentBook.volumeInfo.averageRating ?? 0,
            ratingsCount: currentBook.volumeInfo.ratingsCount ?? 0,
          ),
        ],
      ),
    );
  }
}
