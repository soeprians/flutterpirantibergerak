import 'dart:io';

import 'package:dio/dio.dart';


const baseUrl = 'https://api.unsplash.com/';
const apiKey = '8TODLZGiEdeh04TjcVNCadlVbYmIhaMrRgmrZvOOhIw';

class ApiProvider {
  Dio get dio => _dio();

  Dio _dio() {
    var dio = Dio(options());
    return dio;
  }

  BaseOptions options() {
    var options = BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      responseType: ResponseType.plain,
      headers: {
        HttpHeaders.authorizationHeader: 'Client-ID $apiKey',
      },
    );
    return options;
  }
}