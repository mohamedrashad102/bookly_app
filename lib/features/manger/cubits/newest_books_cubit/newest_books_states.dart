import 'package:bookly_app/features/data/models/book_model/book_model.dart';

abstract class NewestBooksState {}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksFailureState extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailureState(this.errorMessage);
}

class NewestBooksSucceedState extends NewestBooksState {
  final List<BookModel> booksData;
  NewestBooksSucceedState(this.booksData);
}
