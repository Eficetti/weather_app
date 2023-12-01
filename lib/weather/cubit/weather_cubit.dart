import 'package:bloc/bloc.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:weather_app/weather/cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherState());

  final repository = WeatherRepository();

  Future<void> getWeatherByLocation(String city) async {
    emit(state.copyWith(status: WeatherStatus.attempting));
    try {
      final weatherList = await repository.getWeatherByCity(city);
      emit(
        state.copyWith(
          status: WeatherStatus.success,
          weather: weatherList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WeatherStatus.failure,
          failure: e.toString(),
        ),
      );
    }
  }

  Future<void> getWeatherForecast() async {
    emit(state.copyWith(status: WeatherStatus.attempting));
    try {
      final weatherList = await repository.getWeatherForecast();
      emit(
        state.copyWith(
          status: WeatherStatus.success,
          weatherList: weatherList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WeatherStatus.failure,
          failure: e.toString(),
        ),
      );
    }
  }
}
