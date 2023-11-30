// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_hourly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherHourly _$WeatherHourlyFromJson(Map<String, dynamic> json) {
  return _WeatherHourly.fromJson(json);
}

/// @nodoc
mixin _$WeatherHourly {
  List<String> get time => throw _privateConstructorUsedError;
  List<double> get temperature2m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherHourlyCopyWith<WeatherHourly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherHourlyCopyWith<$Res> {
  factory $WeatherHourlyCopyWith(
          WeatherHourly value, $Res Function(WeatherHourly) then) =
      _$WeatherHourlyCopyWithImpl<$Res, WeatherHourly>;
  @useResult
  $Res call({List<String> time, List<double> temperature2m});
}

/// @nodoc
class _$WeatherHourlyCopyWithImpl<$Res, $Val extends WeatherHourly>
    implements $WeatherHourlyCopyWith<$Res> {
  _$WeatherHourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherHourlyImplCopyWith<$Res>
    implements $WeatherHourlyCopyWith<$Res> {
  factory _$$WeatherHourlyImplCopyWith(
          _$WeatherHourlyImpl value, $Res Function(_$WeatherHourlyImpl) then) =
      __$$WeatherHourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> time, List<double> temperature2m});
}

/// @nodoc
class __$$WeatherHourlyImplCopyWithImpl<$Res>
    extends _$WeatherHourlyCopyWithImpl<$Res, _$WeatherHourlyImpl>
    implements _$$WeatherHourlyImplCopyWith<$Res> {
  __$$WeatherHourlyImplCopyWithImpl(
      _$WeatherHourlyImpl _value, $Res Function(_$WeatherHourlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
  }) {
    return _then(_$WeatherHourlyImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2m: null == temperature2m
          ? _value._temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherHourlyImpl implements _WeatherHourly {
  const _$WeatherHourlyImpl(
      {required final List<String> time,
      required final List<double> temperature2m})
      : _time = time,
        _temperature2m = temperature2m;

  factory _$WeatherHourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherHourlyImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2m;
  @override
  List<double> get temperature2m {
    if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2m);
  }

  @override
  String toString() {
    return 'WeatherHourly(time: $time, temperature2m: $temperature2m)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherHourlyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2m, _temperature2m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2m));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherHourlyImplCopyWith<_$WeatherHourlyImpl> get copyWith =>
      __$$WeatherHourlyImplCopyWithImpl<_$WeatherHourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherHourlyImplToJson(
      this,
    );
  }
}

abstract class _WeatherHourly implements WeatherHourly {
  const factory _WeatherHourly(
      {required final List<String> time,
      required final List<double> temperature2m}) = _$WeatherHourlyImpl;

  factory _WeatherHourly.fromJson(Map<String, dynamic> json) =
      _$WeatherHourlyImpl.fromJson;

  @override
  List<String> get time;
  @override
  List<double> get temperature2m;
  @override
  @JsonKey(ignore: true)
  _$$WeatherHourlyImplCopyWith<_$WeatherHourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
