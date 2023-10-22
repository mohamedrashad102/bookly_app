import 'package:bookly_app/core/errors.dart';

import 'package:bookly_app/features/data/models/book_model/book_model.dart';
import 'package:bookly_app/services/api_service.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._apiService);
  final ApiService _apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject: programming&sorting=newest');
      List<dynamic> items = data['items'];
      List<BookModel> books =
          items.map((book) => BookModel.fromMap(book)).toList();
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(NetworkFailure.fromDioException(error));
      }
      return left(NetworkFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject: programming');
      List<dynamic> items = data['items'];
      List<BookModel> books =
          items.map((book) => BookModel.fromMap(book)).toList();
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(NetworkFailure.fromDioException(error));
      }
      return left(NetworkFailure(error.toString()));
    }
  }
}
