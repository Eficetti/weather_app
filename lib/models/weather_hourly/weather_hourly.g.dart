// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherHourlyImpl _$$WeatherHourlyImplFromJson(Map<String, dynamic> json) =>
    _$WeatherHourlyImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2m: (json['temperature2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$WeatherHourlyImplToJson(_$WeatherHourlyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature2m': instance.temperature2m,
    };
