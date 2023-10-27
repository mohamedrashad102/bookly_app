import 'package:bookly_app/features/data/repos/home_repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'smeller_books_state.dart';

class SmellerBooksCubit extends Cubit<SmellerBooksState> {
  SmellerBooksCubit(this._homeRepo) : super(SmellerBooksInitialState());

  static SmellerBooksCubit of(context) => BlocProvider.of(context);

  final HomeRepo _homeRepo;

  Future<void> fetchSmellerBooks({required String category}) async {
    emit(SmellerBooksLoadingState());
    var result = await _homeRepo.fetchSmellerBooks(category: category );
    result.fold(
      (failure) => emit(SmellerBooksFailureState(failure.errorMessage)),
      (books) => emit(SmellerBooksSucceedState(books)),
    );
  }
}
