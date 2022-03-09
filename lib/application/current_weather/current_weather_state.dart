part of 'current_weather_bloc.dart';

@freezed
class CurrentWeatherState with _$CurrentWeatherState {
  const factory CurrentWeatherState({
    required Option<Either<WeatherFailure, CurrentResponse>>
        requestCurrentWeather,
    required bool isLoading,
  }) = _Initial;
  factory CurrentWeatherState.initial() =>
      CurrentWeatherState(requestCurrentWeather: none(), isLoading: false);
}
