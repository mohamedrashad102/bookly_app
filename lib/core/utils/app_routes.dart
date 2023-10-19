import 'package:bookly_app/features/views/book_details_view/book_details_view.dart';
import 'package:bookly_app/features/views/home_view/home_view.dart';
import 'package:bookly_app/features/views/splash_view/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
