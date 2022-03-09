import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'current_daily_response.freezed.dart';
part 'current_daily_response.g.dart';

CurrentDailyResponse currentDailyResponseFromJson(String str) =>
    CurrentDailyResponse.fromJson(json.decode(str));

String currentDailyResponseToJson(CurrentDailyResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class CurrentDailyResponse with _$CurrentDailyResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentDailyResponse({
    required double lat,
    required double lon,
    required String timezone,
    required int timezoneOffset,
    required Current current,
    required List<Daily> daily,
  }) = _CurrentDailyResponse;

  factory CurrentDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentDailyResponseFromJson(json);
}

@freezed
abstract class Current with _$Current {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Current({
    required int dt,
    required int sunrise,
    required int sunset,
    required double temp,
    required double feelsLike,
    required int pressure,
    required int humidity,
    required double dewPoint,
    required int clouds,
    required int visibility,
    required double windSpeed,
    required List<Weather> weather,
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
abstract class Daily with _$Daily {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Daily({
    required int dt,
    required int sunrise,
    required int sunset,
    required int moonrise,
    required int moonset,
    required double moonPhase,
    required Temp temp,
    required FeelsLike feelsLike,
    required int pressure,
    required int humidity,
    required double dewPoint,
    required double windSpeed,
    required int windDeg,
    required double windGust,
    required List<Weather> weather,
    required int clouds,
    required double pop,
    required double rain,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
abstract class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    required double day,
    required double night,
    required double eve,
    required double morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
}

@freezed
abstract class Temp with _$Temp {
  const factory Temp({
    required double day,
    required double min,
    required double max,
    required double night,
    required double eve,
    required double morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}
