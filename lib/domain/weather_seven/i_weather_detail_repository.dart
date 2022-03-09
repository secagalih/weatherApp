import 'package:fpdart/fpdart.dart';
import 'package:weatherapp/domain/weather_seven/weather_detail_failure.dart';

import 'entitiy/current_daily_response.dart';

abstract class IWeatherDetailRepository {
  Future<Either<WeatherDetailFailure, CurrentDailyResponse>> getDetailWeather({
    required double latitude,
    required double longitude,
  });
}
