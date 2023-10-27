import 'package:bookly_app/core/utils/book_image.dart';
import 'package:flutter/material.dart';

class HomeBookImage extends StatelessWidget {
  const HomeBookImage({
    super.key,
    required this.src,
  });
  final String src;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BookImage(src: src),
    );
  }
}
