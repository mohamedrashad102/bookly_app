import 'package:bookly_app/features/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitialState());

  static NewestBooksCubit of(context) => BlocProvider.of(context);

  final HomeRepo _homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await _homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailureState(failure.errorMessage)),
      (books) => emit(NewestBooksSucceedState(books)),
    );
  }
}
