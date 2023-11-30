import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather_hourly/hourly_units/hourly_units.dart';
import 'package:weather_app/models/weather_hourly/weather_hourly.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double latitude,
    required double longitude,
    required double elevation,
    required double generationTimeMs,
    required int utcOffsetSeconds,
    required String timezone,
    required String timezoneAbbreviation,
    required List<WeatherHourly> hourly,
    required List<HourlyUnits> hourlyUnits,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}