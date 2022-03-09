import 'package:fpdart/fpdart.dart';
import 'package:weatherapp/domain/weather/weather_failure.dart';

import 'entity/current_response.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, CurrentResponse>> getCurrentWeather({
    required double latitude,
    required double longitude,
  });
}
