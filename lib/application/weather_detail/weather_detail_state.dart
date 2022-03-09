part of 'weather_detail_bloc.dart';

@freezed
class WeatherDetailState with _$WeatherDetailState {
  const factory WeatherDetailState({
    required Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
        requestWeatherDetail,
    required bool isLoading,
  }) = _Initial;
  factory WeatherDetailState.initial() =>
      WeatherDetailState(requestWeatherDetail: none(), isLoading: false);
}
