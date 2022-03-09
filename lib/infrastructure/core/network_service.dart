import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:weatherapp/domain/network/i_network_service.dart';
import 'package:weatherapp/domain/network/network_error.dart';

class NetworkService implements INetworkService {
  late final Dio dio;
  late final Connectivity connectivity;
  NetworkService({
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
    String baseUrl = '',
    Map<String, dynamic>? queryParameters,
    Iterable<Interceptor>? interceptors,
  }) {
    dio = Dio();
    final BaseOptions _options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      queryParameters: queryParameters,
    );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    dio.options = _options;
    connectivity = Connectivity();
  }

  @override
  Future<Either<NetworkError, dynamic>> getHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int p1, int p2)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'accept': ContentType.json.mimeType
        };
        if (header != null) {
          headers.addAll(header);
        }
        dio.options.headers = headers;
        final Response response = await dio.get(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkError.timeout());
          case DioErrorType.other:
            return left(NetworkError.other(error: e));
          default:
            return left(NetworkError.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkError.noInternet());
    }
  }
}
