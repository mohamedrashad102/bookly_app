import 'package:dio/dio.dart';

class ApiService {
  static const _baseUrl = 'https://www.googleapis.com/books/v1/';
  static Dio dio = Dio();

  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get(_baseUrl + endPoint);
    return response.data;
  }
}
