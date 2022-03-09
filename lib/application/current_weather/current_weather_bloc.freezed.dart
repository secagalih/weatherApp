// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentWeatherEventTearOff {
  const _$CurrentWeatherEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $CurrentWeatherEvent = _$CurrentWeatherEventTearOff();

/// @nodoc
mixin _$CurrentWeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherEventCopyWith<$Res> {
  factory $CurrentWeatherEventCopyWith(
          CurrentWeatherEvent value, $Res Function(CurrentWeatherEvent) then) =
      _$CurrentWeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentWeatherEventCopyWithImpl<$Res>
    implements $CurrentWeatherEventCopyWith<$Res> {
  _$CurrentWeatherEventCopyWithImpl(this._value, this._then);

  final CurrentWeatherEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentWeatherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CurrentWeatherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CurrentWeatherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CurrentWeatherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$CurrentWeatherStateTearOff {
  const _$CurrentWeatherStateTearOff();

  _Initial call(
      {required Option<Either<WeatherFailure, CurrentResponse>>
          requestCurrentWeather,
      required bool isLoading}) {
    return _Initial(
      requestCurrentWeather: requestCurrentWeather,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $CurrentWeatherState = _$CurrentWeatherStateTearOff();

/// @nodoc
mixin _$CurrentWeatherState {
  Option<Either<WeatherFailure, CurrentResponse>> get requestCurrentWeather =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentWeatherStateCopyWith<CurrentWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherStateCopyWith<$Res> {
  factory $CurrentWeatherStateCopyWith(
          CurrentWeatherState value, $Res Function(CurrentWeatherState) then) =
      _$CurrentWeatherStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<WeatherFailure, CurrentResponse>> requestCurrentWeather,
      bool isLoading});
}

/// @nodoc
class _$CurrentWeatherStateCopyWithImpl<$Res>
    implements $CurrentWeatherStateCopyWith<$Res> {
  _$CurrentWeatherStateCopyWithImpl(this._value, this._then);

  final CurrentWeatherState _value;
  // ignore: unused_field
  final $Res Function(CurrentWeatherState) _then;

  @override
  $Res call({
    Object? requestCurrentWeather = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      requestCurrentWeather: requestCurrentWeather == freezed
          ? _value.requestCurrentWeather
          : requestCurrentWeather // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherFailure, CurrentResponse>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $CurrentWeatherStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<WeatherFailure, CurrentResponse>> requestCurrentWeather,
      bool isLoading});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CurrentWeatherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? requestCurrentWeather = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_Initial(
      requestCurrentWeather: requestCurrentWeather == freezed
          ? _value.requestCurrentWeather
          : requestCurrentWeather // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherFailure, CurrentResponse>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.requestCurrentWeather, required this.isLoading});

  @override
  final Option<Either<WeatherFailure, CurrentResponse>> requestCurrentWeather;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CurrentWeatherState(requestCurrentWeather: $requestCurrentWeather, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.requestCurrentWeather, requestCurrentWeather) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestCurrentWeather),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements CurrentWeatherState {
  const factory _Initial(
      {required Option<Either<WeatherFailure, CurrentResponse>>
          requestCurrentWeather,
      required bool isLoading}) = _$_Initial;

  @override
  Option<Either<WeatherFailure, CurrentResponse>> get requestCurrentWeather;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
