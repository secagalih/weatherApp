import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/domain/network/i_network_service.dart';
import 'package:weatherapp/domain/weather/entity/current_response.dart';

import 'package:weatherapp/domain/weather/i_weather_repository.dart';
import 'package:weatherapp/domain/weather/weather_failure.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final INetworkService _networkService;

  WeatherRepository(this._networkService);
  @override
  Future<Either<WeatherFailure, CurrentResponse>> getCurrentWeather(
      {required double latitude, required double longitude}) async {
    try {
      final response =
          await _networkService.getHttp(path: 'onecall', queryParameter: {
        'lat': latitude,
        'lon': longitude,
        'exclude': 'daily',
        'units': 'metric',
        'appid': '45865970ebbfbc127eb2a16dd7f753e7',
      });
      return response.match(
        (error) => error.map(noInternet: (_) {
          return left(const WeatherFailure.noInternet());
        }, serverError: (error) {
          final response = error.response;
          if (response == null) {
            return left(const WeatherFailure.unexpected());
          }
          return left(WeatherFailure.serverError(
            code: response.data['code'] ?? '',
            message: response.data['message'] ?? '',
          ));
        }, timeout: (_) {
          return left(const WeatherFailure.timeout());
        }, other: (_) {
          return left(const WeatherFailure.unexpected());
        }),
        (response) async {
          final data = CurrentResponse.fromJson(response);
          return right(data);
        },
      );
    } catch (e) {
      return left(const WeatherFailure.unexpected());
    }
  }
}
