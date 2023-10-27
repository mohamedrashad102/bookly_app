import 'package:bookly_app/core/utils/book__rate.dart';
import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/manger/cubits/smeller_books_cubit/smeller_books_cubit.dart';
import 'package:bookly_app/features/views/book_details_view/widgets/book_details_image.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/book_author.dart';
import '../../../core/utils/book_title.dart';
import 'widgets/book_details_app_bar.dart';
import 'widgets/book_details_free_preview_card.dart';
import 'widgets/book_details_list_view.dart';
import 'widgets/book_details_you_can_also_like_text.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.currentBook});
  final BookModel currentBook;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    final String category = widget.currentBook.volumeInfo.categories!.first;
    SmellerBooksCubit.of(context).fetchSmellerBooks(category: category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BookDetailsAppBar(),
                const SizedBox(height: 30),
                BookDetailsImage(
                    src: widget.currentBook.volumeInfo.imageLinks.thumbnail),
                const SizedBox(height: 50),
                BookTitle(bookTitle: widget.currentBook.volumeInfo.title!),
                const SizedBox(height: 10),
                BookAuthor(
                    bookAuthor: widget.currentBook.volumeInfo.authors!.first),
                const SizedBox(height: 15),
                BookRateAndCount(
                  averageRating:
                      widget.currentBook.volumeInfo.averageRating ?? 0,
                  ratingsCount: widget.currentBook.volumeInfo.ratingsCount ?? 0,
                ),
                const SizedBox(height: 40),
                const BookDetailsFreePreviewCard(),
                const SizedBox(height: 50),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: BookDetailsYouCanAlsoLikeText()),
                const SizedBox(height: 10),
                const BookDetailsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
