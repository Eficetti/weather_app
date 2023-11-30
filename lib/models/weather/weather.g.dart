// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      elevation: (json['elevation'] as num).toDouble(),
      generationTimeMs: (json['generationTimeMs'] as num).toDouble(),
      utcOffsetSeconds: json['utcOffsetSeconds'] as int,
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezoneAbbreviation'] as String,
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => WeatherHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourlyUnits: (json['hourlyUnits'] as List<dynamic>)
          .map((e) => HourlyUnits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'generationTimeMs': instance.generationTimeMs,
      'utcOffsetSeconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezoneAbbreviation': instance.timezoneAbbreviation,
      'hourly': instance.hourly,
      'hourlyUnits': instance.hourlyUnits,
    };
