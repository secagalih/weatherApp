// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import 'application/current_weather/current_weather_bloc.dart' as _i16;
import 'application/weather_detail/weather_detail_bloc.dart' as _i15;
import 'domain/network/i_network_service.dart' as _i10;
import 'domain/weather/i_weather_repository.dart' as _i13;
import 'domain/weather_seven/i_weather_detail_repository.dart' as _i11;
import 'infrastructure/core/location_service.dart' as _i6;
import 'infrastructure/core/logger_interceptor.dart' as _i8;
import 'infrastructure/core/register_module.dart' as _i17;
import 'infrastructure/weather/weather_repository.dart' as _i14;
import 'infrastructure/weather_detail/weather_detail_repository.dart' as _i12;
import 'presentation/app_widget.dart' as _i3;
import 'simple_bloc_delegate.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppWidget>(() => _i3.AppWidget());
  gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i5.Geolocator>(() => registerModule.geolocatpr);
  gh.lazySingleton<_i6.LocationService>(() => _i6.LocationService());
  gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i8.LoggerInterceptor>(
      () => _i8.LoggerInterceptor(get<_i7.Logger>()));
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i7.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  await gh.lazySingletonAsync<_i10.INetworkService>(
      () => registerModule.network(get<String>(instanceName: 'baseUrl')),
      preResolve: true);
  gh.lazySingleton<_i11.IWeatherDetailRepository>(
      () => _i12.WeatherDetailRepository(get<_i10.INetworkService>()));
  gh.lazySingleton<_i13.IWeatherRepository>(
      () => _i14.WeatherRepository(get<_i10.INetworkService>()));
  gh.lazySingleton<_i15.WeatherDetailBloc>(() => _i15.WeatherDetailBloc(
      get<_i11.IWeatherDetailRepository>(), get<_i6.LocationService>()));
  gh.lazySingleton<_i16.CurrentWeatherBloc>(() => _i16.CurrentWeatherBloc(
      get<_i13.IWeatherRepository>(), get<_i6.LocationService>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
