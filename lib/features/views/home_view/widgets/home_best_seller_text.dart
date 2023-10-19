import 'package:flutter/material.dart';

class HomeBestSellerText extends StatelessWidget {
  const HomeBestSellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Best Seller',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
