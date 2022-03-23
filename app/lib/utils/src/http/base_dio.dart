import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:flutter/foundation.dart';

class BaseDio with DioMixin implements Dio {
  BaseDio({
    String baseUrl = '',
    int? connectTimeout,
    int? sendTimeout,
    int? receiveTimeout,
  }) {
    options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
    );
    httpClientAdapter = DefaultHttpClientAdapter();
    if(kDebugMode) {
      interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }
}
