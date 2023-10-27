import 'package:bookly_app/features/manger/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/manger/cubits/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_newest_item.dart';

class HomeBestSellerListView extends StatelessWidget {
  const HomeBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucceedState) {
          return SliverList.separated(
            itemBuilder: (context, index) =>
                HomeNewestItem(state.booksData[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: state.booksData.length,
          );
        } else if (state is NewestBooksFailureState) {
          return SliverToBoxAdapter(
            child: ErrorWidget(state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
