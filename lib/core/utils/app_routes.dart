import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/data/repos/home_repo/home_repo.dart';
import 'package:bookly_app/features/manger/cubits/smeller_books_cubit/smeller_books_cubit.dart';
import 'package:bookly_app/features/views/book_details_view/book_details_view.dart';
import 'package:bookly_app/features/views/home_view/home_view.dart';
import 'package:bookly_app/features/views/splash_view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SmellerBooksCubit(getIt.get<HomeRepo>()),
          child: BookDetailsView(currentBook: state.extra as BookModel,),
        ),
      ),
    ],
  );
}
