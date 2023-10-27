import 'package:bookly_app/features/manger/cubits/smeller_books_cubit/smeller_books_cubit.dart';
import 'package:bookly_app/features/manger/cubits/smeller_books_cubit/smeller_books_state.dart';
import 'package:bookly_app/features/views/book_details_view/widgets/book_details_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmellerBooksCubit, SmellerBooksState>(
      builder: (context, state) {
        if (state is SmellerBooksSucceedState) {
          return SizedBox(
            height: 115,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => BookDetailsListViewItem(
                src: state.booksData[index].volumeInfo.imageLinks.thumbnail,
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 3),
              itemCount: state.booksData.length,
            ),
          );
        } else if (state is SmellerBooksFailureState) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
