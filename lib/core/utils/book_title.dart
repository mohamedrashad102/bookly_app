import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key,
    required this.bookTitle,
  });
  final String bookTitle;

  @override
  Widget build(BuildContext context) {
    return  CustomText(
      bookTitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      fontSize: 17,
    );
  }
}
