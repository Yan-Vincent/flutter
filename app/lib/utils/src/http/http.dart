import './base_dio.dart';

class Http {
  late BaseDio _baseDio;

  Http({
    String baseUrl = '',
    int? connectTimeout,
    int? sendTimeout,
    int? receiveTimeout,
  }) {
    _baseDio = BaseDio(baseUrl: baseUrl);
  }
}
