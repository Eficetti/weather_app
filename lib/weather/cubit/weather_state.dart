import 'package:weather_app/models/weather/weather.dart';

/// The status of the to-do related API calls.
enum WeatherStatus {
  /// The first state when its instanced.
  initial,

  /// The state is trying to make the API call.
  attempting,

  /// The API return a 200 (ok).
  success,

  /// The API return a unsuccessfully response code.
  failure;

  bool get isInitial => this == WeatherStatus.initial;
  bool get isAttempting => this == WeatherStatus.attempting;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

class WeatherState {
  const WeatherState({
    this.status = WeatherStatus.initial,
    this.weather,
    this.weatherList,
    this.failure,
  });

  final WeatherStatus status;
  final Weather? weather;
  final List<Weather>? weatherList;
  final String? failure;

  WeatherState copyWith({
    WeatherStatus? status,
    Weather? weather,
    String? failure,
    List<Weather>? weatherList,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weather: weather ?? this.weather,
      failure: failure ?? this.failure,
      weatherList: weatherList ?? this.weatherList,
    );
  }
}
