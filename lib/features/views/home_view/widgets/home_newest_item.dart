import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/views/home_view/widgets/home_book_details.dart';
import 'package:bookly_app/features/views/home_view/widgets/home_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeNewestItem extends StatelessWidget {
  const HomeNewestItem(
    this.currentBook, {
    super.key,
  });
  final BookModel currentBook;

  @override
  Widget build(BuildContext context) {
    var src = currentBook.volumeInfo.imageLinks.thumbnail;
    return GestureDetector(
      onTap: () => _navigateToBookDetailsView(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeBookImage(src: src),
          const SizedBox(width: 20),
          BookDetails(currentBook: currentBook),
        ],
      ),
    );
  }

  void _navigateToBookDetailsView(BuildContext context) =>
      context.go(AppRoutes.bookDetailsView, extra: currentBook);
}
