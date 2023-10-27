import 'package:bookly_app/core/utils/custom_error_widget.dart';
import 'package:bookly_app/features/manger/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/manger/cubits/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/features/views/home_view/widgets/home_featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeFeaturedBookListView extends StatelessWidget {
  const HomeFeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucceedState) {
          var books = state.booksData;
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              itemBuilder: (context, index) => HomeFeaturedBookItem(
                currentBook: books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
