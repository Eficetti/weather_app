import 'package:bloc/bloc.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:weather_app/weather/location_finder/cubit/weather_location_finder.state.dart';

class WeatherLocationFinderCubit extends Cubit<WeatherLocationState> {
  WeatherLocationFinderCubit() : super(const WeatherLocationState());

  final repository = WeatherRepository();

  // Future<void> findLocation() async {
  //   emit(state.copyWith(status: WeatherLocationStatus.attempting));
  //   try {
  //     final location = await locationRepository.getLocation();
  //     final weather = await weatherRepository.getWeather(location);
  //     emit(WeatherLocationFinderState.success(weather));
  //   } on LocationException catch (e) {
  //     emit(WeatherLocationFinderState.failure(e));
  //   } on WeatherException catch (e) {
  //     emit(WeatherLocationFinderState.failure(e));
  //   }
  // }
}
