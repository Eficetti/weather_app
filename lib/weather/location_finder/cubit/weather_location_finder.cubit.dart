import 'package:bloc/bloc.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:weather_app/weather/location_finder/cubit/weather_location_finder.state.dart';

class WeatherLocationFinderCubit extends Cubit<WeatherLocationState> {
  WeatherLocationFinderCubit() : super(const WeatherLocationState());

  final repository = WeatherRepository();

  Future<void> findWeatherByLocation(String city) async {
    emit(state.copyWith(status: WeatherLocationStatus.attempting));
    try {
      final weatherList = await repository.getWeatherListByCity(city);
      emit(
        state.copyWith(
          status: WeatherLocationStatus.success,
          weather: weatherList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WeatherLocationStatus.failure,
          failure: e.toString(),
        ),
      );
    }
  }
}
