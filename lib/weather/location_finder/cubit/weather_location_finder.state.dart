import 'package:weather_app/models/weather/weather.dart';

/// The status of the to-do related API calls.
enum WeatherLocationStatus {
  /// The first state when its instanced.
  initial,

  /// The state is trying to make the API call.
  attempting,

  /// The API return a 200 (ok).
  success,

  /// The API return a unsuccessfully response code.
  failure;

  bool get isInitial => this == WeatherLocationStatus.initial;
  bool get isAttempting => this == WeatherLocationStatus.attempting;
  bool get isSuccess => this == WeatherLocationStatus.success;
  bool get isFailure => this == WeatherLocationStatus.failure;
}

class WeatherLocationState {
  const WeatherLocationState({
    this.status = WeatherLocationStatus.initial,
    this.weather = const [],
    this.failure,
  });

  final WeatherLocationStatus status;
  final List<Weather> weather;
  final String? failure;

  WeatherLocationState copyWith({
    WeatherLocationStatus? status,
    List<Weather>? weather,
    String? failure,
  }) {
    return WeatherLocationState(
      status: status ?? this.status,
      weather: weather ?? this.weather,
      failure: failure ?? this.failure,
    );
  }
}
