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
}
