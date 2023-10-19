import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      'Harry Potter and the Goblet of Fire',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      fontSize: 17,
    );
  }
}
