import 'package:bookly_app/features/data/repos/home_repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitialState());

  static FeaturedBooksCubit of(context) => BlocProvider.of(context);

  final HomeRepo _homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailureState(failure.errorMessage)),
      (books) => emit(FeaturedBooksSucceedState(books)),
    );
  }
}
