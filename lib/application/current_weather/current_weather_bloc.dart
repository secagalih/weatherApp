import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/domain/weather/entity/current_response.dart';
import 'package:weatherapp/domain/weather/i_weather_repository.dart';
import 'package:weatherapp/domain/weather/weather_failure.dart';
import 'package:weatherapp/infrastructure/core/location_service.dart';

part 'current_weather_event.dart';
part 'current_weather_state.dart';
part 'current_weather_bloc.freezed.dart';

@lazySingleton
class CurrentWeatherBloc
    extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  final IWeatherRepository _weatherRepository;
  final LocationService locationService;

  CurrentWeatherBloc(
    this._weatherRepository,
    this.locationService,
  ) : super(CurrentWeatherState.initial()) {
    on<CurrentWeatherEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(state.copyWith(isLoading: true));
          final Position currentLocation =
              await locationService.determinePosition();

          final currentWeather = await _weatherRepository.getCurrentWeather(
              latitude: currentLocation.latitude,
              longitude: currentLocation.longitude);
          emit(state.copyWith(
              isLoading: false,
              requestCurrentWeather: optionOf(currentWeather)));
        },
      );
    });
  }
}
