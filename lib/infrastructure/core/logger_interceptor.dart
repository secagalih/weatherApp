import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class LoggerInterceptor extends Interceptor {
  final Logger logger;

  LoggerInterceptor(this.logger);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestHeaders = <String, dynamic>{};
    requestHeaders.addAll(options.headers);
    logger.i(requestHeaders, 'Headers');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.e('${err.type}');
    logger.e(err.message);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i(response.headers);
    if (response.data != nullptr) {
      logger.i(response.data);
    }

    super.onResponse(response, handler);
  }
}
