import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_failure.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.serverError({
    required String code,
    required String message,
  }) = _ServerError;
  const factory WeatherFailure.noInternet() = _NoInternet;
  const factory WeatherFailure.timeout() = _Timeout;
  const factory WeatherFailure.unexpected() = _Unexpected;
}
