import 'package:bookly_app/core/utils/book_photo.dart';
import 'package:flutter/material.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const BookPhoto(
          height: 100,
          width: 80,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 3),
        itemCount: 20,
      ),
    );
  }
}
