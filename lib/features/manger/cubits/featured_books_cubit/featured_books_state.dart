import 'package:bookly_app/features/data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailureState(this.errorMessage);
}

class FeaturedBooksSucceedState extends FeaturedBooksState {
  final List<BookModel> booksData;
  FeaturedBooksSucceedState(this.booksData);
}
