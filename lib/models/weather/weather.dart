import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather_app/models/weather/coord/coord.dart';
import 'package:weather_app/models/weather/main/main.dart';
import 'package:weather_app/models/weather/sys/sys.dart';
import 'package:weather_app/models/weather/weather_element/weather_element.dart';
import 'package:weather_app/models/weather/wind/wind.dart';

import 'clouds/clouds.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required List<WeatherElement> weather,
    required Main main,
    required int visibility,
    required Wind wind,
    required Clouds clouds,
    required int dt,
    required Sys sys,
    Coord? coord,
    String? base,
    int? timezone,
    int? id,
    String? name,
    int? cod,
    @JsonKey(name: 'dt_txt') DateTime? date,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
