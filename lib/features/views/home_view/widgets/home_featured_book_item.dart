import 'package:bookly_app/core/utils/book_image.dart';
import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class HomeFeaturedBookItem extends StatelessWidget {
  const HomeFeaturedBookItem({super.key, required this.currentBook});
  final BookModel currentBook;
  @override
  Widget build(BuildContext context) {
    final String src = currentBook.volumeInfo.imageLinks.thumbnail;
    return SizedBox(
      height: 200,
      child: BookImage(src: src),
    );
  }
}
