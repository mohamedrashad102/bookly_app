import 'package:bookly_app/core/utils/custom_text.dart';
import 'package:flutter/material.dart';

class BookDetailsYouCanAlsoLikeText extends StatelessWidget {
  const BookDetailsYouCanAlsoLikeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      'You can see also',
      fontSize: 14,
    );
  }
}
