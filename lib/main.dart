import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/data/repos/home_repo/home_repo.dart';
import 'package:bookly_app/features/manger/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/manger/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepo>())..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepo>())..fetchFeaturedBooks(),
        ),
       
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        routerConfig: AppRoutes.route,
      ),
    );
  }
}
