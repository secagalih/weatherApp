import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/domain/weather_seven/i_weather_detail_repository.dart';
import 'package:weatherapp/domain/weather_seven/weather_detail_failure.dart';
import 'package:weatherapp/infrastructure/core/location_service.dart';

import '../../domain/weather_seven/entitiy/current_daily_response.dart';

part 'weather_detail_event.dart';
part 'weather_detail_state.dart';
part 'weather_detail_bloc.freezed.dart';

@lazySingleton
class WeatherDetailBloc extends Bloc<WeatherDetailEvent, WeatherDetailState> {
  final IWeatherDetailRepository _weatherDetailRepository;
  final LocationService locationService;
  WeatherDetailBloc(this._weatherDetailRepository, this.locationService)
      : super(WeatherDetailState.initial()) {
    on<WeatherDetailEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          final Position currentLocation =
              await locationService.determinePosition();
          final currentWeather =
              await _weatherDetailRepository.getDetailWeather(
                  latitude: currentLocation.latitude,
                  longitude: currentLocation.longitude);
          emit(state.copyWith(
              isLoading: false,
              requestWeatherDetail: optionOf(currentWeather)));
        },
      );
    });
  }
}
