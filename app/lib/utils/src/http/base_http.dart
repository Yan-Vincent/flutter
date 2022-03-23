import 'package:dio/dio.dart';
import './base_dio.dart';

class BaseHttp {
  factory BaseHttp() => _instance;
  static final BaseHttp _instance = BaseHttp._internal();
  BaseHttp._internal();

  late BaseDio _baseDio;
  void init({
    String baseUrl = '',
    int? connectTimeout,
    int? sendTimeout,
    int? receiveTimeout,
  }) {
    _baseDio = BaseDio(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
    );
  }

  Future<Response> request(String path, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    data,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    return await _baseDio.request(
      path,
      options: options,
      queryParameters: queryParameters,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
    );
  }
}
