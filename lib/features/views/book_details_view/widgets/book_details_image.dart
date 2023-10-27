import 'package:bookly_app/core/utils/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key, required this.src});
  final String src;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BookImage(src: src),
    );
  }
}
