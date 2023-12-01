import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_up_panel/slide_up_panel.dart';
import 'package:weather_app/weather/cubit/weather_cubit.dart';
import 'package:weather_app/weather/cubit/weather_state.dart';
import 'package:weather_app/weather/widgets/weather_home_tile_component.dart';
import 'package:weather_app/weather/widgets/weather_information.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: const WeatherHomeView(),
    );
  }
}

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height * 0.4;
    final maxHeight = MediaQuery.of(context).size.height * 0.8;

    context.read<WeatherCubit>().getWeatherByLocation('Argentina');
    context.read<WeatherCubit>().getWeatherForecast();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF362A84),
            Color(0xFF5936B4),
          ],
        ),
      ),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state.status.isAttempting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status.isFailure) {
            return Center(
              child: Text(state.failure ?? ''),
            );
          }

          return SlideUpPanel(
            rounded: true,
            backGroundWidget: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.only(left: 120, right: 115, top: 101),
                child: WeatherHomeTile(
                  locationName: state.weather?.name ?? '',
                  weatherState: state.weather?.weather.first.description ?? '',
                  highTemperature: state.weather?.main.temp_max?.toInt() ?? 0,
                  lowTemperature: state.weather?.main.temp_min?.toInt() ?? 0,
                  temperature: state.weather?.main.temp?.toInt() ?? 0,
                ),
              ),
            ),
            sliderWidget: Container(
              height: 584,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF48319D),
                    Color(0xFF1F1D47),
                  ],
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: WeatherInformation(
                    weatherForecast: state.weatherList ?? [],
                  ),
                ),
              ),
            ),
            maxHeight: maxHeight,
            minHeight: minHeight,
            collapseOnBackgroundTap: true,
          );
        },
      ),
    );
  }
}
