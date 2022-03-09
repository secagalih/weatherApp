import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/domain/weather_seven/entitiy/current_daily_response.dart';
import 'package:weatherapp/domain/weather_seven/i_weather_detail_repository.dart';
import 'package:weatherapp/domain/weather_seven/weather_detail_failure.dart';

import '../../domain/network/i_network_service.dart';

@LazySingleton(as: IWeatherDetailRepository)
class WeatherDetailRepository implements IWeatherDetailRepository {
  final INetworkService _networkService;

  WeatherDetailRepository(this._networkService);
  @override
  Future<Either<WeatherDetailFailure, CurrentDailyResponse>> getDetailWeather(
      {required double latitude, required double longitude}) async {
    try {
      final response =
          await _networkService.getHttp(path: 'onecall', queryParameter: {
        'lat': latitude,
        'lon': longitude,
        'exclude': 'hourly',
        'units': 'metric',
        'appid': '45865970ebbfbc127eb2a16dd7f753e7',
      });
      return response.match(
        (error) => error.map(noInternet: (_) {
          return left(const WeatherDetailFailure.noInternet());
        }, serverError: (error) {
          final response = error.response;
          if (response == null) {
            return left(const WeatherDetailFailure.unexpected());
          }
          return left(WeatherDetailFailure.serverError(
            code: response.data['code'] ?? '',
            message: response.data['message'] ?? '',
          ));
        }, timeout: (_) {
          return left(const WeatherDetailFailure.timeout());
        }, other: (_) {
          return left(const WeatherDetailFailure.unexpected());
        }),
        (response) async {
          final data = CurrentDailyResponse.fromJson(response);
          return right(data);
        },
      );
    } catch (e) {
      return left(const WeatherDetailFailure.unexpected());
    }
  }
}
