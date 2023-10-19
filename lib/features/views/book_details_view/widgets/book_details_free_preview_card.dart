import 'package:bookly_app/core/utils/book_price.dart';
import 'package:bookly_app/core/utils/custom_text.dart';
import 'package:flutter/material.dart';

class BookDetailsFreePreviewCard extends StatelessWidget {
  const BookDetailsFreePreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(20);
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: radius,
                  bottomLeft: radius,
                ),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: const BookPrice(blackColor: true),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: radius,
                  bottomRight: radius,
                ),
                color: Color(0xffEF8262),
              ),
              alignment: Alignment.center,
              child: const CustomText(
                'Free preview',
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
