import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:weatherapp/infrastructure/core/logger_interceptor.dart';
import 'package:weatherapp/infrastructure/core/network_service.dart';
import 'package:weatherapp/injection.dart';

import '../../domain/network/i_network_service.dart';

@module
abstract class RegisterModule {
  @Named('baseUrl')
  String get baseUrl => 'https://api.openweathermap.org/data/2.5/';
  @lazySingleton
  Logger get logger => Logger();
  @lazySingleton
  Connectivity get connectivity => Connectivity();
  @lazySingleton
  Geolocator get geolocatpr => Geolocator();

  @preResolve
  @lazySingleton
  Future<INetworkService> network(
    @Named('baseUrl') String baseUrl,
  ) async {
    List<Interceptor> interceptors = <Interceptor>[
      getIt<LoggerInterceptor>(),
    ];

    return NetworkService(baseUrl: baseUrl, interceptors: interceptors);
  }
}
