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
    var endPoint =
        'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest';
    var result = await _fetchBooks(endPoint: endPoint);
    return result;
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    var endPoint = 'volumes?Filtering=free-ebooks&q=subject:programming';
    var result = await _fetchBooks(endPoint: endPoint);
    return result;
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSmellerBooks({
    required String category,
  }) async {
    var endPoint =
        'volumes?Filtering=free-ebooks&sorting=relevance:$category&q=programming';
    var result = await _fetchBooks(endPoint: endPoint);
    return result;
  }

  Future<Either<Failure, List<BookModel>>> _fetchBooks(
      {required String endPoint}) async {
    try {
      var data = await _apiService.get(endPoint: endPoint);
      List<dynamic> items = data['items'];
      List<BookModel> books = items.map((book) {
        try {
          return BookModel.fromMap(book);
        } catch (e) {
          return BookModel.fromMap(book);
        }
      }).toList();
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(NetworkFailure.fromDioException(error));
      }
      return left(NetworkFailure(error.toString()));
    }
  }
}
