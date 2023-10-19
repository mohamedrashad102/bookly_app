import 'package:flutter/material.dart';

import 'custom_text.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      '19.99 €',
      fontWeight: FontWeight.bold,
    );
  }
}
