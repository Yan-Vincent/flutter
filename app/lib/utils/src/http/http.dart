import 'package:dio/dio.dart';
import './base_http.dart';

class Http {
  static void init({
    String baseUrl = '',
    int? connectTimeout,
    int? sendTimeout,
    int? receiveTimeout,
  }) {
    BaseHttp().init(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
    );
  }

  static Future<Response> get(String path, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    return await BaseHttp().request(
      path,
      options: options ?? Options(method: 'GET'),
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
    );
  }

  static Future<Response> post(String path, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    data,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    return await BaseHttp().request(
      path,
      options: options ?? Options(method: 'POST'),
      queryParameters: queryParameters,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
    );
  }
}
