import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_detail_failure.freezed.dart';

@freezed
class WeatherDetailFailure with _$WeatherDetailFailure {
  const factory WeatherDetailFailure.serverError({
    required String code,
    required String message,
  }) = _ServerError;
  const factory WeatherDetailFailure.noInternet() = _NoInternet;
  const factory WeatherDetailFailure.timeout() = _Timeout;
  const factory WeatherDetailFailure.unexpected() = _Unexpected;
}
