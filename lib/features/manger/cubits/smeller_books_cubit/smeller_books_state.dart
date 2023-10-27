import 'package:bookly_app/features/data/models/book_model/book_model.dart';

abstract class SmellerBooksState {}

class SmellerBooksInitialState extends SmellerBooksState {}

class SmellerBooksLoadingState extends SmellerBooksState {}

class SmellerBooksFailureState extends SmellerBooksState {
  final String errorMessage;
  SmellerBooksFailureState(this.errorMessage);
}

class SmellerBooksSucceedState extends SmellerBooksState {
  final List<BookModel> booksData;
  SmellerBooksSucceedState(this.booksData);
}
