part of 'weather_detail_bloc.dart';

@freezed
class WeatherDetailEvent with _$WeatherDetailEvent {
  const factory WeatherDetailEvent.started() = _Started;
}