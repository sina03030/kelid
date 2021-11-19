import 'package:dio/dio.dart';
import 'package:kellid/core/service_locator.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const baseUrl = 'https://chimelk-api.novin-dev.com';

void initDio() async {
  Dio dio = getIt<Dio>();
  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout = 30000;
  dio.options.receiveTimeout = 30000;
  PrettyDioLogger prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
    request: true,
  );
  dio.interceptors.add(prettyDioLogger);
}