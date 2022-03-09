// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) {
  return _CurrentResponse.fromJson(json);
}

/// @nodoc
class _$CurrentResponseTearOff {
  const _$CurrentResponseTearOff();

  _CurrentResponse call(
      {required double lat,
      required double lon,
      required String timezone,
      required int timezoneOffset,
      required Current current,
      required List<Minutely> minutely,
      required List<Current> hourly}) {
    return _CurrentResponse(
      lat: lat,
      lon: lon,
      timezone: timezone,
      timezoneOffset: timezoneOffset,
      current: current,
      minutely: minutely,
      hourly: hourly,
    );
  }

  CurrentResponse fromJson(Map<String, Object?> json) {
    return CurrentResponse.fromJson(json);
  }
}

/// @nodoc
const $CurrentResponse = _$CurrentResponseTearOff();

/// @nodoc
mixin _$CurrentResponse {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  int get timezoneOffset => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;
  List<Minutely> get minutely => throw _privateConstructorUsedError;
  List<Current> get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentResponseCopyWith<CurrentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentResponseCopyWith<$Res> {
  factory $CurrentResponseCopyWith(
          CurrentResponse value, $Res Function(CurrentResponse) then) =
      _$CurrentResponseCopyWithImpl<$Res>;
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezoneOffset,
      Current current,
      List<Minutely> minutely,
      List<Current> hourly});

  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$CurrentResponseCopyWithImpl<$Res>
    implements $CurrentResponseCopyWith<$Res> {
  _$CurrentResponseCopyWithImpl(this._value, this._then);

  final CurrentResponse _value;
  // ignore: unused_field
  final $Res Function(CurrentResponse) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? current = freezed,
    Object? minutely = freezed,
    Object? hourly = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      minutely: minutely == freezed
          ? _value.minutely
          : minutely // ignore: cast_nullable_to_non_nullable
              as List<Minutely>,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Current>,
    ));
  }

  @override
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentResponseCopyWith<$Res>
    implements $CurrentResponseCopyWith<$Res> {
  factory _$CurrentResponseCopyWith(
          _CurrentResponse value, $Res Function(_CurrentResponse) then) =
      __$CurrentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezoneOffset,
      Current current,
      List<Minutely> minutely,
      List<Current> hourly});

  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$CurrentResponseCopyWithImpl<$Res>
    extends _$CurrentResponseCopyWithImpl<$Res>
    implements _$CurrentResponseCopyWith<$Res> {
  __$CurrentResponseCopyWithImpl(
      _CurrentResponse _value, $Res Function(_CurrentResponse) _then)
      : super(_value, (v) => _then(v as _CurrentResponse));

  @override
  _CurrentResponse get _value => super._value as _CurrentResponse;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? current = freezed,
    Object? minutely = freezed,
    Object? hourly = freezed,
  }) {
    return _then(_CurrentResponse(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      minutely: minutely == freezed
          ? _value.minutely
          : minutely // ignore: cast_nullable_to_non_nullable
              as List<Minutely>,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Current>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CurrentResponse implements _CurrentResponse {
  const _$_CurrentResponse(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezoneOffset,
      required this.current,
      required this.minutely,
      required this.hourly});

  factory _$_CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentResponseFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final int timezoneOffset;
  @override
  final Current current;
  @override
  final List<Minutely> minutely;
  @override
  final List<Current> hourly;

  @override
  String toString() {
    return 'CurrentResponse(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, minutely: $minutely, hourly: $hourly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentResponse &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality()
                .equals(other.timezoneOffset, timezoneOffset) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.minutely, minutely) &&
            const DeepCollectionEquality().equals(other.hourly, hourly));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(timezoneOffset),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(minutely),
      const DeepCollectionEquality().hash(hourly));

  @JsonKey(ignore: true)
  @override
  _$CurrentResponseCopyWith<_CurrentResponse> get copyWith =>
      __$CurrentResponseCopyWithImpl<_CurrentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentResponseToJson(this);
  }
}

abstract class _CurrentResponse implements CurrentResponse {
  const factory _CurrentResponse(
      {required double lat,
      required double lon,
      required String timezone,
      required int timezoneOffset,
      required Current current,
      required List<Minutely> minutely,
      required List<Current> hourly}) = _$_CurrentResponse;

  factory _CurrentResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrentResponse.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get timezone;
  @override
  int get timezoneOffset;
  @override
  Current get current;
  @override
  List<Minutely> get minutely;
  @override
  List<Current> get hourly;
  @override
  @JsonKey(ignore: true)
  _$CurrentResponseCopyWith<_CurrentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
class _$CurrentTearOff {
  const _$CurrentTearOff();

  _Current call(
      {required int dt,
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
      double? pop}) {
    return _Current(
      dt: dt,
      temp: temp,
      feelsLike: feelsLike,
      pressure: pressure,
      humidity: humidity,
      dewPoint: dewPoint,
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weather,
      pop: pop,
    );
  }

  Current fromJson(Map<String, Object?> json) {
    return Current.fromJson(json);
  }
}

/// @nodoc
const $Current = _$CurrentTearOff();

/// @nodoc
mixin _$Current {
  int get dt => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get dewPoint => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;
  int get clouds => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  int get windDeg => throw _privateConstructorUsedError;
  double get windGust => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res>;
  $Res call(
      {int dt,
      double temp,
      double feelsLike,
      int pressure,
      int humidity,
      double dewPoint,
      double uvi,
      int clouds,
      int visibility,
      double windSpeed,
      int windDeg,
      double windGust,
      List<Weather> weather,
      double? pop});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res> implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  final Current _value;
  // ignore: unused_field
  final $Res Function(Current) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: dewPoint == freezed
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDeg: windDeg == freezed
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) then) =
      __$CurrentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int dt,
      double temp,
      double feelsLike,
      int pressure,
      int humidity,
      double dewPoint,
      double uvi,
      int clouds,
      int visibility,
      double windSpeed,
      int windDeg,
      double windGust,
      List<Weather> weather,
      double? pop});
}

/// @nodoc
class __$CurrentCopyWithImpl<$Res> extends _$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(_Current _value, $Res Function(_Current) _then)
      : super(_value, (v) => _then(v as _Current));

  @override
  _Current get _value => super._value as _Current;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? pop = freezed,
  }) {
    return _then(_Current(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: dewPoint == freezed
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDeg: windDeg == freezed
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Current implements _Current {
  const _$_Current(
      {required this.dt,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.windGust,
      required this.weather,
      this.pop});

  factory _$_Current.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentFromJson(json);

  @override
  final int dt;
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dewPoint;
  @override
  final double uvi;
  @override
  final int clouds;
  @override
  final int visibility;
  @override
  final double windSpeed;
  @override
  final int windDeg;
  @override
  final double windGust;
  @override
  final List<Weather> weather;
  @override
  final double? pop;

  @override
  String toString() {
    return 'Current(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Current &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.dewPoint, dewPoint) &&
            const DeepCollectionEquality().equals(other.uvi, uvi) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.windDeg, windDeg) &&
            const DeepCollectionEquality().equals(other.windGust, windGust) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(dewPoint),
      const DeepCollectionEquality().hash(uvi),
      const DeepCollectionEquality().hash(clouds),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(windDeg),
      const DeepCollectionEquality().hash(windGust),
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentToJson(this);
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {required int dt,
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
      double? pop}) = _$_Current;

  factory _Current.fromJson(Map<String, dynamic> json) = _$_Current.fromJson;

  @override
  int get dt;
  @override
  double get temp;
  @override
  double get feelsLike;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  double get dewPoint;
  @override
  double get uvi;
  @override
  int get clouds;
  @override
  int get visibility;
  @override
  double get windSpeed;
  @override
  int get windDeg;
  @override
  double get windGust;
  @override
  List<Weather> get weather;
  @override
  double? get pop;
  @override
  @JsonKey(ignore: true)
  _$CurrentCopyWith<_Current> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {required int id,
      required String main,
      required String description,
      required String icon}) {
    return _Weather(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }

  Weather fromJson(Map<String, Object?> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_Weather(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(this);
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required int id,
      required String main,
      required String description,
      required String icon}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

Minutely _$MinutelyFromJson(Map<String, dynamic> json) {
  return _Minutely.fromJson(json);
}

/// @nodoc
class _$MinutelyTearOff {
  const _$MinutelyTearOff();

  _Minutely call({required int dt, required double precipitation}) {
    return _Minutely(
      dt: dt,
      precipitation: precipitation,
    );
  }

  Minutely fromJson(Map<String, Object?> json) {
    return Minutely.fromJson(json);
  }
}

/// @nodoc
const $Minutely = _$MinutelyTearOff();

/// @nodoc
mixin _$Minutely {
  int get dt => throw _privateConstructorUsedError;
  double get precipitation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinutelyCopyWith<Minutely> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinutelyCopyWith<$Res> {
  factory $MinutelyCopyWith(Minutely value, $Res Function(Minutely) then) =
      _$MinutelyCopyWithImpl<$Res>;
  $Res call({int dt, double precipitation});
}

/// @nodoc
class _$MinutelyCopyWithImpl<$Res> implements $MinutelyCopyWith<$Res> {
  _$MinutelyCopyWithImpl(this._value, this._then);

  final Minutely _value;
  // ignore: unused_field
  final $Res Function(Minutely) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? precipitation = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: precipitation == freezed
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MinutelyCopyWith<$Res> implements $MinutelyCopyWith<$Res> {
  factory _$MinutelyCopyWith(_Minutely value, $Res Function(_Minutely) then) =
      __$MinutelyCopyWithImpl<$Res>;
  @override
  $Res call({int dt, double precipitation});
}

/// @nodoc
class __$MinutelyCopyWithImpl<$Res> extends _$MinutelyCopyWithImpl<$Res>
    implements _$MinutelyCopyWith<$Res> {
  __$MinutelyCopyWithImpl(_Minutely _value, $Res Function(_Minutely) _then)
      : super(_value, (v) => _then(v as _Minutely));

  @override
  _Minutely get _value => super._value as _Minutely;

  @override
  $Res call({
    Object? dt = freezed,
    Object? precipitation = freezed,
  }) {
    return _then(_Minutely(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: precipitation == freezed
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Minutely implements _Minutely {
  const _$_Minutely({required this.dt, required this.precipitation});

  factory _$_Minutely.fromJson(Map<String, dynamic> json) =>
      _$$_MinutelyFromJson(json);

  @override
  final int dt;
  @override
  final double precipitation;

  @override
  String toString() {
    return 'Minutely(dt: $dt, precipitation: $precipitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Minutely &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality()
                .equals(other.precipitation, precipitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(precipitation));

  @JsonKey(ignore: true)
  @override
  _$MinutelyCopyWith<_Minutely> get copyWith =>
      __$MinutelyCopyWithImpl<_Minutely>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinutelyToJson(this);
  }
}

abstract class _Minutely implements Minutely {
  const factory _Minutely({required int dt, required double precipitation}) =
      _$_Minutely;

  factory _Minutely.fromJson(Map<String, dynamic> json) = _$_Minutely.fromJson;

  @override
  int get dt;
  @override
  double get precipitation;
  @override
  @JsonKey(ignore: true)
  _$MinutelyCopyWith<_Minutely> get copyWith =>
      throw _privateConstructorUsedError;
}
