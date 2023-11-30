import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_hourly.freezed.dart';
part 'weather_hourly.g.dart';

@freezed
class WeatherHourly with _$WeatherHourly {
  const factory WeatherHourly({
    required List<String> time,
    required List<double> temperature2m,
  }) = _WeatherHourly;

  factory WeatherHourly.fromJson(Map<String, dynamic> json) =>
      _$WeatherHourlyFromJson(json);
}
