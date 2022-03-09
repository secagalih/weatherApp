// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherDetailEventTearOff {
  const _$WeatherDetailEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $WeatherDetailEvent = _$WeatherDetailEventTearOff();

/// @nodoc
mixin _$WeatherDetailEvent {
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
abstract class $WeatherDetailEventCopyWith<$Res> {
  factory $WeatherDetailEventCopyWith(
          WeatherDetailEvent value, $Res Function(WeatherDetailEvent) then) =
      _$WeatherDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherDetailEventCopyWithImpl<$Res>
    implements $WeatherDetailEventCopyWith<$Res> {
  _$WeatherDetailEventCopyWithImpl(this._value, this._then);

  final WeatherDetailEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$WeatherDetailEventCopyWithImpl<$Res>
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
    return 'WeatherDetailEvent.started()';
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

abstract class _Started implements WeatherDetailEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$WeatherDetailStateTearOff {
  const _$WeatherDetailStateTearOff();

  _Initial call(
      {required Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
          requestWeatherDetail,
      required bool isLoading}) {
    return _Initial(
      requestWeatherDetail: requestWeatherDetail,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $WeatherDetailState = _$WeatherDetailStateTearOff();

/// @nodoc
mixin _$WeatherDetailState {
  Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
      get requestWeatherDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDetailStateCopyWith<WeatherDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailStateCopyWith<$Res> {
  factory $WeatherDetailStateCopyWith(
          WeatherDetailState value, $Res Function(WeatherDetailState) then) =
      _$WeatherDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
          requestWeatherDetail,
      bool isLoading});
}

/// @nodoc
class _$WeatherDetailStateCopyWithImpl<$Res>
    implements $WeatherDetailStateCopyWith<$Res> {
  _$WeatherDetailStateCopyWithImpl(this._value, this._then);

  final WeatherDetailState _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailState) _then;

  @override
  $Res call({
    Object? requestWeatherDetail = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      requestWeatherDetail: requestWeatherDetail == freezed
          ? _value.requestWeatherDetail
          : requestWeatherDetail // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherDetailFailure, CurrentDailyResponse>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $WeatherDetailStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
          requestWeatherDetail,
      bool isLoading});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WeatherDetailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? requestWeatherDetail = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_Initial(
      requestWeatherDetail: requestWeatherDetail == freezed
          ? _value.requestWeatherDetail
          : requestWeatherDetail // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherDetailFailure, CurrentDailyResponse>>,
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
      {required this.requestWeatherDetail, required this.isLoading});

  @override
  final Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
      requestWeatherDetail;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'WeatherDetailState(requestWeatherDetail: $requestWeatherDetail, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.requestWeatherDetail, requestWeatherDetail) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestWeatherDetail),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements WeatherDetailState {
  const factory _Initial(
      {required Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
          requestWeatherDetail,
      required bool isLoading}) = _$_Initial;

  @override
  Option<Either<WeatherDetailFailure, CurrentDailyResponse>>
      get requestWeatherDetail;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
