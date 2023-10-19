import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key, this.blackColor = false});
  final bool blackColor;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      '19.99 €',
      fontWeight: FontWeight.bold,
      color: blackColor ? Colors.black : Colors.white,
    );
  }
}
