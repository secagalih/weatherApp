import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'current_response.freezed.dart';
part 'current_response.g.dart';

CurrentResponse currentResponseFromJson(String str) =>
    CurrentResponse.fromJson(json.decode(str));

String currentResponseToJson(CurrentResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class CurrentResponse with _$CurrentResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentResponse({
    required double lat,
    required double lon,
    required String timezone,
    required int timezoneOffset,
    required Current current,
    required List<Minutely> minutely,
    required List<Current> hourly,
  }) = _CurrentResponse;

  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);
}

@freezed
abstract class Current with _$Current {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Current({
    required int dt,
    required double temp,
    required double feelsLike,
    required int pressure,
    required int humidity,
    required double dewPoint,
    required double uvi,
    required int clouds,
    required int visibility,
    required double windSpeed,
    required int windDeg,
    required double windGust,
    required List<Weather> weather,
    double? pop,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class Minutely with _$Minutely {
  const factory Minutely({
    required int dt,
    required double precipitation,
  }) = _Minutely;

  factory Minutely.fromJson(Map<String, dynamic> json) =>
      _$MinutelyFromJson(json);
}
